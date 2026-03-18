#!/bin/bash

INTERNAL_OUTPUT="eDP-1"

# Get all connected outputs except the internal one
mapfile -t EXTERNAL_OUTPUTS < <(xrandr | grep " connected" | awk '{print $1}' | grep -v "^$INTERNAL_OUTPUT$")

# If no external displays found
if [ ${#EXTERNAL_OUTPUTS[@]} -eq 0 ]; then
    i3-nagbar -t error -m "No external display detected"
    exit 1
fi

# Join all external outputs into a single string
EXT="${EXTERNAL_OUTPUTS[@]}"

# Build commands dynamically
LAPTOP_CMD="xrandr --output $INTERNAL_OUTPUT --auto --primary"
for out in "${EXTERNAL_OUTPUTS[@]}"; do
    LAPTOP_CMD+=" --output $out --off"
done

EXTERNAL_CMD="xrandr --output $INTERNAL_OUTPUT --off"
for out in "${EXTERNAL_OUTPUTS[@]}"; do
    EXTERNAL_CMD+=" --output $out --auto --primary"
done

CLONE_CMD="xrandr --output $INTERNAL_OUTPUT --auto"
for out in "${EXTERNAL_OUTPUTS[@]}"; do
    CLONE_CMD+=" --output $out --auto --same-as $INTERNAL_OUTPUT"
done

DUAL_CMD="xrandr --output $INTERNAL_OUTPUT --auto"
RIGHT_OF="$INTERNAL_OUTPUT"
for out in "${EXTERNAL_OUTPUTS[@]}"; do
    DUAL_CMD+=" --output $out --auto --right-of $RIGHT_OF"
    RIGHT_OF="$out"
done
DUAL_CMD+=" --primary"

# Launch i3-nagbar
i3-nagbar -t warning -m "Select display mode:" \
-b "Laptop" "$LAPTOP_CMD" \
-b "External" "$EXTERNAL_CMD" \
-b "Clone" "$CLONE_CMD" \
-b "Extend" "$DUAL_CMD"
