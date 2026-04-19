{ config, pkgs, ... }:

{
  # Заменяем Konsole на Kitty
  environment.systemPackages = with pkgs; [
    (writeShellScriptBin "konsole" ''
      exec kitty "$@"
    '')
  ];

  # Kitty как терминал по умолчанию
  environment.sessionVariables = {
    TERMINAL = "kitty";
  };

  # Настройка KDE
  environment.etc."xdg/kdeglobals" = {
    text = ''
      [General]
      TerminalApplication=kitty
      TerminalService=kitty.desktop
    '';
  };
}
