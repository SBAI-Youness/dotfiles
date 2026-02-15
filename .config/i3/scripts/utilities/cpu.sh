#!/bin/bash

# CPU usage
usage=$(top -bn1 | awk -F',' '/Cpu\(s\)/ {print int($1)}' | awk '{print $2}')

# Temperature
if [ -f /sys/class/thermal/thermal_zone0/temp ]; then
    temp=$(cat /sys/class/thermal/thermal_zone0/temp)
    temp=$((temp / 1000))
    echo "CPU: ${temp}°C ${usage}%"
else
    echo "CPU: N/A ${usage}%"
fi
