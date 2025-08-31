#!/bin/bash
i3-msg -t subscribe -m '[ "workspace" ]' | while read -r event; do
    current_ws=$(echo "$event" | jq -r '.current.name')
    if [ "$current_ws" = "2" ]; then
        i3-msg "bar mode invisible"
    else
        i3-msg "bar mode dock"
    fi
done
