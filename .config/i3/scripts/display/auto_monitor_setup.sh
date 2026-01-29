#!/bin/sh

# Check if DP-1 is connected
if xrandr | grep "^DP-1 connected"; then
    # Run DP-1 setup script
    /home/youness_sbai/.config/i3/scripts/display/dp-1.sh
elif xrandr | grep "^HDMI-1 connected"; then
    # Run HMDI-1 setup script
    /home/youness_sbai/.config/i3/scripts/display/hdmi-1.sh
else
    # Run portable setup script
    /home/youness_sbai/.config/i3/scripts/display/portable.sh
fi
