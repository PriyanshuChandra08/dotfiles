#!/bin/bash

# Define wallpaper directory
WALL_DIR="$HOME/Pictures/wallpapers"

# 1. Build a list formatted for Rofi with image preview icons
options=""
while IFS= read -r -d '' file; do
    # Get relative path for cleanly formatted text display
    rel_path="${file#$WALL_DIR/}"
    # Feed "Text Display\0icon\x1f/Full/Path/To/Image"
    options+="${rel_path}\0icon\x1f${file}\n"
done < <(find "$WALL_DIR" -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" \) -print0)

# Check if options are empty
if [ -z "$options" ]; then
    notify-send "Wallpaper Selector" "No images found in $WALL_DIR"
    exit 1
fi

# 2. Launch Rofi in dmenu mode with icons enabled & fuzzy matching
chosen_file=$(echo -en "$options" | rofi -dmenu \
    -p "Select Theme Wallpaper" \
    -show-icons \
    -matching fuzzy \
    -theme-str 'listview { lines: 6; } element-icon { size: 4.0em; }')

# 3. Apply selected wallpaper
if [ -n "$chosen_file" ]; then
    full_path="$WALL_DIR/$chosen_file"
    
    # Run Pywal
    wal -i "$full_path"
    
    notify-send "Theme Updated" "Applied theme from $chosen_file"
fi
