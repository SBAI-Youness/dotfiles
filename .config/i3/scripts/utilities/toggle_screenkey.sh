#!/bin/bash

# Check if screenkey is running
if pgrep -x "screenkey" > /dev/null; then
    pkill screenkey
else
    screenkey
fi
