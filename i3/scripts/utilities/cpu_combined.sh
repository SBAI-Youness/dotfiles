#!/bin/bash

# Get CPU usage by reading /proc/stat twice, 0.5s apart
read cpu user nice system idle iowait irq softirq steal guest < /proc/stat
prev_idle=$((idle + iowait))
prev_total=$((user + nice + system + idle + iowait + irq + softirq + steal))

sleep 0.5

read cpu user nice system idle iowait irq softirq steal guest < /proc/stat
idle=$((idle + iowait))
total=$((user + nice + system + idle + iowait + irq + softirq + steal))

# Calculate CPU usage
cpu_diff=$((total - prev_total))
idle_diff=$((idle - prev_idle))
cpu_usage=$(awk "BEGIN {printf \"%.1f\", 100 * ($cpu_diff - $idle_diff) / $cpu_diff}")

# Get CPU temperature
temp_file="/sys/class/thermal/thermal_zone6/temp"
if [ -f "$temp_file" ]; then
    temp_raw=$(cat "$temp_file")
    temp_c=$(awk "BEGIN {printf \"%.0f\", $temp_raw / 1000}")
else
    temp_c="N/A"
fi

# Output the result
echo "CPU: $cpu_usage% ${temp_c}°C"
