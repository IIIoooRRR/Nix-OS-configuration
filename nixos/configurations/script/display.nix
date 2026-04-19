{ config, pkgs, ... }:

{
  imports = [
    ./kde/default.nix
    ./kde/terminal.nix
  ];

  services.xserver.enable = true;
  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;
  services.displayManager.sddm.autoNumlock = true;
}
