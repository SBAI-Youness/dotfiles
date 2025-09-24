#!/bin/bash

# subscribe to workspace changes
i3-msg -t subscribe '[ "workspace" ]' | jq -r --unbuffered '.change + " " + (.current.name // "")' | while read change ws; do
    if [ "$change" = "focus" ]; then
        if [ "$ws" = "2" ]; then
            i3-msg bar mode invisible mybar >/dev/null
        else
            i3-msg bar mode dock mybar >/dev/null
        fi
    fi
done

