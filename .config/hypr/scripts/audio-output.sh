#!/bin/bash

HEADPHONES="alsa_output.usb-Logitech_G535_Wireless_Gaming_Headset-00.analog-stereo"
SPEAKERS="alsa_output.pci-0000_2c_00.4.analog-stereo"

get_id() {
    wpctl status -n | grep "$1" | head -n 1 | grep -oE '[0-9]+' | head -n 1
}

choice=$(printf "󰋋  G535 Headset\n󰓃  Altavoces" | rofi -dmenu -p "Audio")

case "$choice" in
    *"G535 Headset")
        ID=$(get_id "$HEADPHONES")

        if [ -n "$ID" ]; then
            wpctl set-default "$ID"
            notify-send "Audio" "󰋋  G535 seleccionado"
        else
            notify-send "Audio" "No se encontró el G535"
        fi
        ;;

    *"Altavoces")
        ID=$(get_id "$SPEAKERS")

        if [ -n "$ID" ]; then
            wpctl set-default "$ID"
            notify-send "Audio" "󰓃  Altavoces seleccionados"
        else
            notify-send "Audio" "No se encontraron los altavoces"
        fi
        ;;
esac
