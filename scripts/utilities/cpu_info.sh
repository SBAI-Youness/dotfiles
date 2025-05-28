#!/bin/bash

# Ensure consistent decimal separator
export LANG=C

CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
CPU_TEMP=$(cat /sys/class/thermal/thermal_zone0/temp)
CPU_TEMP_C=$((CPU_TEMP / 1000))

printf "CPU: %.0f%% %d°C\n" "$CPU_USAGE" "$CPU_TEMP_C"
