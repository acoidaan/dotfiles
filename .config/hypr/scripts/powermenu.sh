#!/bin/bash

LOCK="󰌾  Bloquear"
SUSPEND="󰒲  Suspender"
LOGOUT="󰍃  Cerrar sesión"
REBOOT="󰜉  Reiniciar"
SHUTDOWN="󰐥  Apagar"

selected=$(printf "%s\n%s\n%s\n%s\n%s" \
    "$LOCK" \
    "$SUSPEND" \
    "$LOGOUT" \
    "$REBOOT" \
    "$SHUTDOWN" |
    rofi -dmenu -i -p "Power")

case "$selected" in
    "$LOCK")
        hyprlock
        ;;
    "$SUSPEND")
        systemctl suspend
        ;;
    "$LOGOUT")
        hyprctl dispatch exit
        ;;
    "$REBOOT")
        systemctl reboot
        ;;
    "$SHUTDOWN")
        systemctl poweroff
        ;;
esac
