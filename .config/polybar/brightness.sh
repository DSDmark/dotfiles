#!/bin/bash
brightness=$(cat /sys/class/backlight/intel_backlight/brightness)
echo $brightness

