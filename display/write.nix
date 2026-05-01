
{ config, pkgs, lib, ... }:
{
imports = [
];
  home-manager.users.kezess = {
    xdg.configFile."waybar/config.jsonc".source = ./waybar/waybar-config.jsonc;
    xdg.configFile."waybar/style.css".source = ./waybar/waybar-style.css;
    xdg.configFile."fuzzel/fuzzel.ini".source = ./fuzzel/fuzzel.ini;
    };
}
