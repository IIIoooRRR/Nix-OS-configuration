{ pkgs, ... }:

{
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
    };

environment.systemPackages = with pkgs; [
  (catppuccin-sddm.override {
    flavor = "mocha";
    font  = "JetBrainsMono Nerd Font";
    fontSize = "12";
     background = "./wall.jpg";
  })
];

services.displayManager.sddm.theme = "catppuccin-mocha";
}
