{config, pkgs, ...}:
{
 programs.zsh = {
    enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    autosuggestions.enable = true;

    ohMyZsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [
        "git"
        "history-substring-search"
        "docker"
        "sudo"
      ];
    };

    shellAliases = {
      ll = "ls -l";
      la = "ls -la";
      nix-up = "sudo nixos-rebuild switch";
      nix-l = "sudo nix-env --list-generations -p /nix/var/nix/profiles/system";
      nix-cl = "sudo nix-collect-garbage -d";
      zapret = "cd zapret && ./service.sh";
      c = "clear && neofetch";
      gs = "git status";
      ga = "git add";
      gc = "git commit -m";
      gp = "git push";
    };
  };

  # Терминал по умолчанию для системы
  environment.sessionVariables = {
    TERMINAL = "kitty";
  };

  # Kitty как терминал для XDG
  xdg.terminal-exec = {
    enable = true;
    settings = {
      default = [ "kitty.desktop" ];
    };
  };


  users.defaultUserShell = pkgs.zsh;
}
