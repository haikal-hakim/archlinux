#!/bin/bash

updates_arch=$(checkupdates 2>/dev/null | wc -l)

if command -v yay &>/dev/null; then
  updates_aur=$(yay -Qum --aur 2>/dev/null | wc -l)
else
  updates_aur=0
fi

total_updates=$((updates_arch + updates_aur))

if [ "$total_updates" -gt 0 ]; then
  notify-send -u normal \
    -i "archlinux" \
    "Update Tersedia" \
    "Pacman  <b>$updates_arch</b> \nAUR  <b>$updates_aur</b>"
fi
