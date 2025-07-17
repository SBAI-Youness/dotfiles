#!/bin/bash

# Check battery status and level using acpi
battery_status=$(acpi -b | grep -o 'Discharging')
battery_level=$(acpi -b | grep -o '[0-9]\+%' | grep -o '[0-9]\+')

# If battery is discharging and level is <= 20%, send notification
if [[ "$battery_status" == "Discharging" && $battery_level -le 20 ]]; then
    notify-send --urgency=critical "Low Battery" "Battery level is ${battery_level}%! Please plug in your charger."
fi
