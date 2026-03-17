#!/bin/bash

notified=0

while true; do
    BAT=$(cat /sys/class/power_supply/BAT0/capacity)
    STATUS=$(cat /sys/class/power_supply/BAT0/status)

    if [ "$BAT" -lt 20 ] && [ "$STATUS" = "Discharging" ]; then
        if [ $notified -eq 0 ]; then
            notify-send -u critical "Battery Low" "Battery is at ${BAT}%"
            notified=1
        fi
    else
        notified=0
    fi

    sleep 120
done
