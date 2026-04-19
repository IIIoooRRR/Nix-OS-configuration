{ config, pkgs, ... }:

{
  imports = [
  ./flatpack.nix
  ./docker.nix
  ./database.nix
  ./redis.nix
    ];
  environment.systemPackages = with pkgs; [
    # Базовые утилиты
    git
    gcc
    gnused
    gawk
    curl
    gnugrep
    coreutils
    nftables
    firefox
    # Оболочки и терминалы
    zsh
    kitty
    # Приложения
    discord
    telegram-desktop
    kdePackages.kate

    # Стилизация
    neofetch

    # Системные
    flatpak
    wget
    home-manager

    #прога наху
    maven
    jdk25
  ];
}
