#!/usr/bin/env bash

# Show i3-nagbar with buttons
i3-nagbar \
    -t warning \
    -m "Choose display output:" \
    -b "Home HDMI-1" "bash -c '~/.config/i3/scripts/display/home_hdmi-1.sh'" \
    -b "Home DP-1" "bash -c '~/.config/i3/scripts/display/home_dp-1.sh'" \
    -b "Portable" "bash -c '~/.config/i3/scripts/display/portable.sh'"
