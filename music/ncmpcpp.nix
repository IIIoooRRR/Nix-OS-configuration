{ config, pkgs, lib, ... }:

let
  user = "kezess";
 
  mpdConfigFile = pkgs.writeText "mpd.conf" ''
    music_directory    "/home/${user}/Music"
    playlist_directory "/home/${user}/.config/mpd/playlists"
    db_file            "/home/${user}/.config/mpd/tag_cache"
    state_file         "/home/${user}/.config/mpd/state"
    bind_to_address    "127.0.0.1"
    port               "6600"

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
    services.mpd.enable = false;

  systemd.user.services.mpd = {
    enable = true;
    description = "Music Player Daemon";
    wantedBy = [ "default.target" ];
    
     serviceConfig = {
      ExecStart = lib.mkForce "${pkgs.mpd}/bin/mpd --no-daemon ${mpdConfigFile}";
    };
  };

    system.activationScripts.mpdFolders = {
    text = "mkdir -p /home/${user}/.config/mpd/playlists && chown -R ${user}:users /home/${user}/.config/mpd";
  };
}
