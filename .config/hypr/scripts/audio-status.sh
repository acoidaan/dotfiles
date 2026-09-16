#!/bin/bash

DEFAULT=$(wpctl inspect @DEFAULT_AUDIO_SINK@ 2>/dev/null | grep 'node.name' | head -1)

if echo "$DEFAULT" | grep -q "G535"; then
    echo "󰋋"
elif echo "$DEFAULT" | grep -q "pci-0000_2c_00.4"; then
    echo "󰓃"
else
    echo "󰕾"
fi
