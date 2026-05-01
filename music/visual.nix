{ config, pkgs, ... }:
let
  # Создаем текст конфига отдельно
  mpdConf = ''
    music_directory    "/home/kezess/Music"
    playlist_directory "/home/kezess/.config/mpd/playlists"
    db_file            "/home/kezess/.config/mpd/tag_cache"
    log_file           "/home/kezess/.config/mpd/log"
    pid_file           "/home/kezess/.config/mpd/pid"
    state_file         "/home/kezess/.config/mpd/state"

    audio_output {
        type "pipewire"
        name "My PipeWire Output"
    }

    audio_output {
        type   "fifo"
        name   "Visualizer feed"
        path   "/tmp/mpd.fifo"
        format "44100:16:2"
    }
  '';
in
{
  # Полностью отключаем стандартный модуль, он нам мешает
  services.mpd.enable = false;

  # Создаем папку для базы данных, если её нет
  system.activationScripts.mpdFix = "mkdir -p /home/kezess/.config/mpd/playlists && chown -R kezess:users /home/kezess/.config/mpd";

  # Запускаем MPD через пользовательский systemd с нашим текстом конфига
  systemd.user.services.mpd = {
    enable = true;
    description = "Music Player Daemon";
    wantedBy = [ "default.target" ];
    serviceConfig = {
      ExecStart = "${pkgs.mpd}/bin/mpd --no-daemon -"; # Гифен значит читать из stdin
      ExecStartPre = "${pkgs.coreutils}/bin/mkdir -p /home/kezess/.config/mpd/playlists";
    };
    # Передаем сам конфиг прямо в стандартный ввод процесса
    script = ''
      ${pkgs.mpd}/bin/mpd --no-daemon - <<EOF
      ${mpdConf}
      EOF
    '';
  };
}
