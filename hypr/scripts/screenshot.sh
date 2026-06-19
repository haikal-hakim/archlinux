#!/bin/bash

DIR="$HOME/Pictures/Screenshots"
FILE="$DIR/$(date +%Y%m%d_%H%M%S).png"

mkdir -p "$DIR"

if grimblast --freeze copysave area "$FILE"; then
  notify-send \
    -i "$FILE" \
    "Screenshot"
fi
