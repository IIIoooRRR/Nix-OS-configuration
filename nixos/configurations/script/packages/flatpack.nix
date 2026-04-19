{ config, pkgs, ... }:

{
  services.flatpak.enable = true;
  xdg.portal.enable = true;
  
  #
 # services.flatpak.remotes = [
#    {
#      name = "flathub";
#      url = "https://flathub.org/repo/flathub.flatpakrepo";
#    }
#  ];
  
}
