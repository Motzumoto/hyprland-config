#!/bin/sh
# Redirect all script output to /dev/null
exec >/dev/null 2>&1

pscircle \
  --output=~/.config/ml4w/wallpapers/ls_wallpaper.png \
  --max-children=60 \
  --output-width=1920 \
  --output-height=1080 \
  --tree-radius-increment=90 \
  --dot-radius=3 \
  --link-width=1.3 \
  --tree-font-size=10 \
  --toplists-font-size=11 \
  --toplists-bar-width=30 \
  --toplists-row-height=15 \
  --toplists-bar-height=3 \
  --cpulist-center=400.0:-80.0 \
  --memlist-center=400.0:80.0
~/.config/ml4w/scripts/reload-hyprpaper.sh
