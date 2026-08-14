#!/bin/bash

# Define the menu options line-by-line
options="🔒Gautam BUDDHA\n↩️ Road to Forest\n🔄 Reboot\n🛑 Shutdown"

# Pass options to rofi in dmenu mode and save the choice
chosen=$(echo -e "$options" | wofi --dmenu --prompt "Power Menu:")

# Execute the command associated with the choice
case "$chosen" in
    "🔒Gautam BUDDHA")
        wal -i Pictures/wallpapers/Gautam\ Buddha\ meditating.png ;; # Or swaylock, depending on your locker
    "↩️ Road to Forest")
        wal -i Pictures/wallpapers/Road\ to\ forest.jpg ;;
    "🔄 Reboot")
        systemctl reboot ;;
    "🛑 Shutdown")
        systemctl poweroff ;;
esac

