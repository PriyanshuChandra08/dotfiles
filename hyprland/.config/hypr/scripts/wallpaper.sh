#!/bin/bash

# Define your wallpaper directory
WALL_DIR="$HOME/Pictures/wallpapers"

# 1. CD into the directory and find relative paths (preserves subfolder names)
options=$(cd "$WALL_DIR" 2>/dev/null && find . -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" \) | sed 's|^\./||')

# If no wallpapers are found, exit early
if [ -z "$options" ]; then
    notify-send "Wallpaper Selector" "No images found in $WALL_DIR"
    exit 1
fi

# Pass the list of relative paths to wofi in dmenu mode
chosen_file=$(echo "$options" | wofi --dmenu --prompt "Select Theme Wallpaper:")

# If a selection was made, run wal and update the background
if [ -n "$chosen_file" ]; then
    # Reconstruct the correct full path including subdirectories
    full_path="$WALL_DIR/$chosen_file"
    
    # Run Pywal to generate the theme and set the wallpaper
    wal -i "$full_path"
    
    # Send a desktop notification confirming the change
    notify-send "Theme Updated" "Applied theme from $chosen_file"
fi
