#!/usr/bin/env bash

# Directory containing your wallpapers
WALL_DIR="$HOME/dev/wallpapers"

# Find a random image file in the directory
RANDOM_WALL=$(find "$WALL_DIR" -type f \( -iname \*.jpg -o -iname \*.jpeg -o -iname \*.png -o -iname \*.webp \) | shuf -n 1)

# Tell hyprpaper to load the new wallpaper
# The ', ' (comma) means apply to all monitors
hyprctl hyprpaper reload ",$RANDOM_WALL"
