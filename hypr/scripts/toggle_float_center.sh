#!/bin/bash

win=$(hyprctl activewindow -j)

is_floating=$(echo "$win" | jq -r '.floating')

if [ "$is_floating" = "true" ]; then
  hyprctl dispatch 'hl.dsp.window.float({ action = "toggle" })'
else
  hyprctl dispatch 'hl.dsp.window.float({ action = "toggle" })'
  hyprctl dispatch 'hl.dsp.window.resize({ x = 735, y = 470, relative = false })'
  hyprctl dispatch 'hl.dsp.window.center()'
fi
