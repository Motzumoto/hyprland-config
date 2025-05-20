#!/usr/bin/env bash
# kill any existing mpvpaper instances
pkill -f mpvpaper

# start each wallpaper in the background
mpvpaper HDMI-A-1 "/home/lain/Pictures/lain_3_2.mp4" -o "loop no-audio" &
mpvpaper DP-2      "/home/lain/Pictures/lain.gif"           -o "loop no-audio" &
