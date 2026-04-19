{ config, pkgs, ... }:

{
  home-manager.users.kezess = {
    home.file.".config/neofetch/config.conf".text = ''
      print_info() {
          info "" title
          info underline
          info " " distro
          info " " kernel
          info " " shell
          info " " memory
          info " " term
          info " " term_font
          info "⊞ " wm
          info " " theme
          info cols
      }

      kernel_shorthand="on"
      distro_shorthand="off"
      os_arch="hide"
      shell_path="off"
      shell_version="on"
      cpu_temp="on"
      gpu_brand="on"

      # Catppuccin цвета (пурпурный)
      colors=(5 5 5 5 5 5)
      ascii_colors=(5 6 13 5 5 5)

      bold="off"
      underline_enabled="on"
      underline_char="─"
      separator=" "

      # Отображение
      image_backend="kitty"
      image_source=/etc/nixos/script/png/rempng.png
      ascii_distro="nixos_small"

      gap=3
    '';

    # Копируем картинку из папки script
    home.file.".config/neofetch/rempng.png".source = /etc/nixos/script/png/rempng.png;
  };
}
