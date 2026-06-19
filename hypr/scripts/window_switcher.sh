#!/bin/bash

hyprctl clients -j | jq -r '.[] | "\(.title)\t\(.address)"' |
  rofi -dmenu \
    -p "󰓬 Switch Window" \
    -i \
    -theme "$HOME/.config/rofi/config.rasi" \
    -display-columns 1 \
    -sep '\t' |
  awk -F'\t' '{print $2}' |
  xargs -I{} bash -c 'sleep 0.1 && hyprctl dispatch focuswindow address:{}' &
