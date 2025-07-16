#!/bin/sh

# Check if DP-1 is connected
if xrandr | grep "^DP-1 connected"; then
    # Run home setup script
    /home/youness_sbai/.config/i3/scripts/display/home_setup.sh
else
    # Run portable setup script
    /home/youness_sbai/.config/i3/scripts/display/portable_setup.sh
fi
