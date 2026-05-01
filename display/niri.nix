{ config, pkgs, lib, ... }:

let
  unstable = import <nixos-unstable> {};
in

{
  programs.niri = {
    enable = true;
    package = unstable.niri;
  };

  home-manager.users.kezess.home.file.".config/niri/config.kdl".text = ''
    spawn-at-startup "waybar"
    spawn-at-startup "swaybg" "-i" "/etc/nixos/display/wall.jpg" "-m" "fill"
    spawn-at-startup "kitty" "-e" "bash" "-c" "lavat; exec bash";
    spawn-at-startup "kitty"
    spawn-at-startup "kitty" "-e" "bash" "-c" "ncmpcpp; exec bash"
    output "eDP-1" {
        mode "1920x1080"
        scale 1.00
    }


    input {
        keyboard {
	   xkb {
            layout "us,ru"
            options "grp:alt_shift_toggle"
            }
          }
        }
    layout {
        focus-ring {
            width 2
            active-color "#ffffff77"
            inactive-color "#33333377"
        }
    }

    window-rule {
        opacity 0.80
	geometry-corner-radius 12
    }
     window-rule {
        match app-id="vesktop"
        opacity 0.90
   }
        window-rule {
        match app-id="telegram"
        opacity 0.85
   }

    window-rule {
        match app-id="org.vinegarhq.Sober"
        opacity 1.00
   }
binds {
    Print { spawn "sh" "-c" "grim - | wl-copy"; }
    Shift+Mod+S { spawn "sh" "-c" "grim -g \"$(slurp)\" - | wl-copy"; }
    Mod+Shift+E { quit; }

    // windows
    Mod+Q { close-window; }
    Mod+T { spawn "kitty"; }
    Mod+D { spawn "fuzzel"; }
    Mod+W { spawn "firefox"; }
    Mod+Z { spawn "kitty" "-e" "bash" "-c" "cd ~/zapret && ./service.sh; exec bash"; }
    Mod+F { spawn "dolphin"; }
    Mod+M { spawn "kitty" "-e" "bash" "-c" "ncmpcpp; exec bash"; }
    Mod+L { spawn "kitty" "-e" "bash" "-c" "lavat; exec bash"; }
    Mod+G { spawn "steam-run" "/home/kezess/GoLand-2026.1/bin/goland"; }

    // navig
    Mod+Left { focus-column-left; }
    Mod+Right { focus-column-right; }
    Mod+Up { focus-window-up; }
    Mod+Down { focus-window-down; }
    Mod+Shift+H { move-column-left; }
    Mod+Shift+L { move-column-right; }
    Mod+C { center-column; }
    Mod+Minus { set-column-width "-10%"; }
    Mod+Equal { set-column-width "+10%"; }

    // workspaces
    Mod+1 { focus-workspace 1; }
    Mod+2 { focus-workspace 2; }
    Mod+3 { focus-workspace 3; }
    Mod+Shift+1 { move-column-to-workspace 1; }
    Mod+Shift+2 { move-column-to-workspace 2; }
    Mod+Shift+3 { move-column-to-workspace 3; }

    // media
    F2 { spawn "wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "5%-"; }
    F3 { spawn "wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "5%+" "-l" "1.5"; }
    F5 { spawn "brightnessctl" "set" "10%-"; }
    F6 { spawn "brightnessctl" "set" "10%+"; }
  
    }
  '';


}

