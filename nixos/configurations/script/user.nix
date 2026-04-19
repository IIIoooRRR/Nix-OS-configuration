{ config, pkgs, ... }:

{
  users.users.kezess = {
    isNormalUser = true;
    description = "Kezess";
    extraGroups = [ "networkmanager" "wheel" "docker" "redis"];
    packages = with pkgs; [
      kdePackages.kate
      jetbrains.idea-community
    ];
    shell = pkgs.zsh;

  };
  systemd.user.services."disable-session-restore" = {
    script = ''
      ${pkgs.kdePackages.kconfig}/bin/kwriteconfig6 --file ksmserverrc --group General --key loginMode empty
    '';
    wantedBy = [ "plasma-workspace.target" ];
    serviceConfig.Type = "oneshot";
  };

}
