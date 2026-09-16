#!/bin/bash

VPN=$(nmcli -t -f NAME,TYPE connection show --active 2>/dev/null \
    | grep -i '^ProtonVPN.*:vpn$' \
    | head -n 1 \
    | cut -d: -f1)

if [ -n "$VPN" ] && ip link show proton0 &>/dev/null; then
    COUNTRY=$(echo "$VPN" | sed -n 's/^ProtonVPN \([A-Z][A-Z]\).*/\1/p')

    if [ -n "$COUNTRY" ]; then
        echo "󰖂 $COUNTRY"
    else
        echo "󰖂 ON"
    fi
else
    echo "󰖂 OFF"
fi
