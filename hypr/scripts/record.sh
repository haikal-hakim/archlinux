#!/bin/bash
if pgrep wl-screenrec; then
  pkill -INT wl-screenrec
  notify-send -i "media-record-symbolic" "Screen Record" "⏹ Recording stopped"
else
  wl-screenrec -g "$(slurp)" --low-power=off -f ~/Videos/$(date +%Y%m%d-%H%M%S).mp4 &
  notify-send -i "media-record-symbolic" "Screen Record" "⏺ Recording started"
fi
