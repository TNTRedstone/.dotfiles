#!/bin/bash
WALLPAPER=$(find ~/.dotfiles/wallpapers/| shuf -n1)
wal -i $WALLPAPER -s --saturate 0.5
killall waybar; waybar &
swaybg -i $WALLPAPER -m fill &
OLD_PID=$!
while true; do
    sleep 300
    WALLPAPER=$(find ~/.dotfiles/wallpapers/| shuf -n1)
    wal -i $WALLPAPER -s --saturate 0.5
    killall waybar; waybar &
    swaybg -i $WALLPAPER -m fill &
    NEXT_PID=$!
    sleep 5
    kill $OLD_PID
    OLD_PID=$NEXT_PID
done
