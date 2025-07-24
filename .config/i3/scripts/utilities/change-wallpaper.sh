#!/bin/bash

WALLPAPER_DIR="/home/youness_sbai/.config/i3/themes/wallpapers/"
INDEX_FILE="/home/youness_sbai/.config/i3/themes/wallpapers/.current_wallpaper_index"
WALLPAPERS=($(ls "$WALLPAPER_DIR"))
TOTAL=${#WALLPAPERS[@]}

# Read current index
if [ -f "$INDEX_FILE" ]; then
  INDEX=$(cat "$INDEX_FILE")
else
  INDEX=0
fi

# Bound check and set wallpaper
if [ "$INDEX" -ge "$TOTAL" ]; then
  INDEX=0
fi

feh --bg-scale "$WALLPAPER_DIR/${WALLPAPERS[$INDEX]}"

# Increment and save index
NEXT_INDEX=$(( (INDEX + 1) % TOTAL ))
echo $NEXT_INDEX > "$INDEX_FILE"
