#!/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have IPC enabled, you can also use
# polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar mybar 2>&1 | tee -a /tmp/polybar.log & disown

# Wait for Polybar to launch completely
sleep 2


echo "Polybar launched..."

# Launch the auto-hide script
#$HOME/.config/polybar/auto-hide.sh &


