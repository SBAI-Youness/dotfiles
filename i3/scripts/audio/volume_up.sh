#!/bin/bash

# Get the current volume percentage (e.g., "42%")
current_volume=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -oP '\d+(?=%)' | head -1)

# Convert to integer
volume_int=$(printf "%d" "$current_volume")

# Only increase volume if it is below 100%
if [ "$volume_int" -lt 100 ]; then
    # Calculate new volume, but cap at 100
    new_volume=$((volume_int + 5))
    if [ "$new_volume" -gt 100 ]; then
        new_volume=100
    fi
    pactl set-sink-volume @DEFAULT_SINK@ "${new_volume}%"
fi
