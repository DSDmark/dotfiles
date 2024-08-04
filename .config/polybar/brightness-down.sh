#!/bin/bash

BRIGHTNESS_FILE="/sys/class/backlight/intel_backlight/brightness"
MAX_BRIGHTNESS_FILE="/sys/class/backlight/intel_backlight/max_brightness"

current_brightness=$(cat $BRIGHTNESS_FILE)
max_brightness=$(cat $MAX_BRIGHTNESS_FILE)

new_brightness=$((current_brightness - (max_brightness / 10)))

if [ $new_brightness -gt $max_brightness ]; then
  new_brightness=$max_brightness
fi

echo $new_brightness | sudo tee $BRIGHTNESS_FILE > /dev/null
