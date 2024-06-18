#!/bin/bash

# Directory containing your wallpapers
WALLPAPER_DIR="$HOME/Pictures/wallpapers"

# Debug: Print the variable content
echo "Debug: Wallpaper directory is set to: '$WALLPAPER_DIR'"

# Check if the directory exists
if [ ! -d "$WALLPAPER_DIR" ]; then
    echo "Error: Wallpaper directory not found: '$WALLPAPER_DIR'"
    exit 1
fi

# Select a random wallpaper
WALLPAPER=$(ls "$WALLPAPER_DIR" | shuf -n 1)

# Debug: Print the selected wallpaper
echo "Debug: Selected wallpaper is: '$WALLPAPER'"

# Full path to the selected wallpaper
WALLPAPER_PATH="$WALLPAPER_DIR/$WALLPAPER"

# Debug: Print the full path to the selected wallpaper
echo "Debug: Full path to the wallpaper is: '$WALLPAPER_PATH'"

# Check if a wallpaper was selected and is readable
if [ ! -f "$WALLPAPER_PATH" ]; then
    echo "Error: No wallpaper found at path: '$WALLPAPER_PATH'"
    exit 1
fi

if [ ! -r "$WALLPAPER_PATH" ]; then
    echo "Error: Wallpaper is not readable: '$WALLPAPER_PATH'"
    exit 1
fi

# Set the wallpaper using swaybg
swaybg -i "$WALLPAPER_PATH" -m fill &

