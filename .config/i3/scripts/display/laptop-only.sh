#!/bin/bash

LAPTOP="eDP-1"
HDMI="HDMI-1"
DP="DP-1"

export DISPLAY=:0
export XAUTHORITY="$HOME/.Xauthority"

xrandr \
  --output "$LAPTOP" --auto --primary \
  --output "$HDMI" --off \
  --output "$DP" --off
