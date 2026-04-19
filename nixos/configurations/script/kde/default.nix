{ config, pkgs, ... }:

{
  systemd.user.services.enable-kde-effects = {
    script = ''
      ${pkgs.libsForQt5.kconfig}/bin/kwriteconfig5 --file kwinrc --group Plugins --key kwin4_effect_blurEnabled true
      ${pkgs.libsForQt5.kconfig}/bin/kwriteconfig5 --file kwinrc --group Effect-Blur --key BlurStrength 5
      ${pkgs.libsForQt5.kconfig}/bin/kwriteconfig5 --file kdeglobals --group KDE --key MenuOpacity 85
      ${pkgs.libsForQt5.qttools}/bin/qdbus org.kde.KWin /KWin reconfigure
    '';
    wantedBy = [ "plasma-workspace.target" ];
    serviceConfig.Type = "oneshot";
  };
}
