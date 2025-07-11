#!/bin/bash

i3-nagbar -t warning -m 'Choose a system action:' \
-B 'Logout' 'i3-msg exit' \
-B 'Reboot' 'systemctl reboot' \
-B 'Shutdown' 'systemctl poweroff'
