#!/bin/bash


## user should be set to NOPAASSWD for sudo

max_brightness=$(cat /sys/class/backlight/intel_backlight/max_brightness)
currect_brightness=$(cat /sys/class/backlight/intel_backlight/brightness)

inc() {
    new_brightness=$((currect_brightness+50))
    if [ "$new_brightness" -gt "$max_brightness" ]; then
        new_brightness=max_brightness
    fi    
    echo "$new_brightness" | sudo tee /sys/class/backlight/intel_backlight/brightness
}

dec() {
    new_brightness=$((currect_brightness-50))
    if [ "$new_brightness" -le 0 ]; then
        new_brightness=50
    fi    
    echo "$new_brightness" | sudo tee /sys/class/backlight/intel_backlight/brightness
}

case "$1" in
    inc)
        inc 
        ;;
    dec)
        dec 
        ;;
    esac
