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
      c = "clear && fastfetch";
    };
  };

  environment.sessionVariables = {
    TERMINAL = "kitty";
    };


  users.defaultUserShell = pkgs.zsh;
}
