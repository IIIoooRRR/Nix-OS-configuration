#!/usr/bin/env bash
SELECTION=$(echo -e "Выключить\nПерезагрузить\nВыйти" | fuzzel --dmenu --config /etc/nixos/display/fuzzel/menu.ini)

case "$SELECTION" in
    "Выключить")
        systemctl poweroff
        ;;
    "Перезагрузить")
        systemctl reboot
        ;;
    "Выйти")
        niri msg action quit
        ;;
esac
