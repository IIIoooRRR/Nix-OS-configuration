{ pkgs, ... }: {
  home-manager.users.kezess = {
   home.pointerCursor = {
      package = pkgs.adwaita-icon-theme;
      name = "Adwaita";
      size = 12;
      gtk.enable = true;
      x11.enable = true; 
	};
     home.sessionVariables = {
    XCURSOR_SIZE = "12";
    XCURSOR_THEME = "Adwaita";
  };
    };
}
