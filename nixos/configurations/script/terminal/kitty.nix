
{
  home-manager.users.kezess = {
    home.file.".config/kitty/kitty.conf".text = ''
      # Полупрозрачность
      background_opacity 0.85
      dynamic_background_opacity yes

      # Шрифт
      font_size 11
      font_family JetBrains Mono

      # Catppuccin Mocha тема
      background #1e1e2e
      foreground #cdd6f4

      # Black
      color0 #45475a
      color8 #585b70

      # Red
      color1 #f38ba8
      color9 #f38ba8

      # Green
      color2 #a6e3a1
      color10 #a6e3a1

      # Yellow
      color3 #f9e2af
      color11 #f9e2af

      # Blue
      color4 #89b4fa
      color12 #89b4fa

      # Magenta (пурпурный)
      color5 #cba6f7
      color13 #cba6f7

      # Cyan
      color6 #94e2d5
      color14 #94e2d5

      # White
      color7 #bac2de
      color15 #a6adc8

      # Дополнительно
      cursor_shape beam
      cursor_blink_interval 0
      hide_window_decorations no

      # Комбинации клавиш
      map ctrl+shift+z new_window
      map super+shift+n new_os_window
      map ctrl+shift+t new_tab
      map ctrl+shift+q close_tab
      map ctrl+shift+w close_window
      map ctrl+shift+2 next_tab
      map ctrl+shift+1 previous_tab

      # Одиночный экземпляр
      single_instance yes
    '';
  };
}
