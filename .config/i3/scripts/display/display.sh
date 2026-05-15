#!/bin/bash

INTERNAL_OUTPUT="eDP-1"  # change if needed

# Get connected outputs
mapfile -t CONNECTED < <(xrandr | grep " connected" | awk '{print $1}')

# Extract external outputs
EXTERNAL_OUTPUTS=()
for out in "${CONNECTED[@]}"; do
    if [ "$out" != "$INTERNAL_OUTPUT" ]; then
        EXTERNAL_OUTPUTS+=("$out")
    fi
done

# Always enable laptop first (failsafe)
xrandr --output "$INTERNAL_OUTPUT" --auto

# No external → stop here
if [ ${#EXTERNAL_OUTPUTS[@]} -eq 0 ]; then
    i3-nagbar -t warning -m "No external display detected."
    exit 0
fi

# Laptop only
LAPTOP_CMD="xrandr --output $INTERNAL_OUTPUT --auto --primary"
for out in "${EXTERNAL_OUTPUTS[@]}"; do
    LAPTOP_CMD+=" --output $out --off"
done

# External only (safe order)
EXTERNAL_CMD="xrandr --output $INTERNAL_OUTPUT --auto"
for out in "${EXTERNAL_OUTPUTS[@]}"; do
    EXTERNAL_CMD+=" --output $out --auto --primary"
done
EXTERNAL_CMD+=" && sleep 1 && xrandr --output $INTERNAL_OUTPUT --off"

# Clone
CLONE_CMD="xrandr --output $INTERNAL_OUTPUT --auto"
for out in "${EXTERNAL_OUTPUTS[@]}"; do
    CLONE_CMD+=" --output $out --auto --same-as $INTERNAL_OUTPUT"
done

# Extend
EXTEND_CMD="xrandr --output $INTERNAL_OUTPUT --auto"
RIGHT="$INTERNAL_OUTPUT"
for out in "${EXTERNAL_OUTPUTS[@]}"; do
    EXTEND_CMD+=" --output $out --auto --right-of $RIGHT"
    RIGHT="$out"
done
EXTEND_CMD+=" --primary"

# Menu
i3-nagbar -t warning -m "Display mode:" \
-b "Laptop" "$LAPTOP_CMD" \
-b "External" "$EXTERNAL_CMD" \
-b "Clone" "$CLONE_CMD" \
-b "Extend" "$EXTEND_CMD"
