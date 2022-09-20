#!/bin/sh
#
# A simple script to load a background image randomly from a specified directory
#

while true; do
    PID=`pidof swaybg`
    swaybg -i $(find $HOME/Pictures/Wallpapers -type f -name 1* | shuf -n 1) -m fill &
    sleep 1
    kill $PID
    sleep 599
done
