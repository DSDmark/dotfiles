#!/bin/bash

# Replace 'mybar' with the name of your Polybar instance
BAR_NAME="mybar"

# Function to get the window ID of the Polybar
get_polybar_wid() {
  xdotool search --onlyvisible --name "$BAR_NAME"
}

# Function to get the geometry of the Polybar
get_polybar_geometry() {
  local WID=$1
  xwininfo -id $WID | awk '
    /Absolute upper-left X:/ {x = $4}
    /Absolute upper-left Y:/ {y = $4}
    /Width:/ {w = $2}
    /Height:/ {h = $2}
    END {print x, y, w, h}'
}

# Clean up function to run when exiting the script
cleanup() {
  echo "Cleaning up and exiting..."
  if [ $IS_VISIBLE -eq 1 ]; then
    xdotool windowunmap $POLYBAR_WID
  fi
  exit 0
}

# Trap exit signals
trap cleanup SIGINT SIGTERM

# Get the Polybar window ID
POLYBAR_WID=$(get_polybar_wid)
echo "Polybar Window ID: $POLYBAR_WID"

if [ -z "$POLYBAR_WID" ]; then
  echo "Polybar window not found. Exiting."
  exit 1
fi

# Hide the Polybar initially
xdotool windowunmap $POLYBAR_WID
echo "Polybar hidden initially"
IS_VISIBLE=0

while true; do
  # Get mouse position
  eval $(xdotool getmouselocation --shell)
  echo "Mouse Position: X=$X, Y=$Y"

  # Get Polybar geometry
  read X_BAR Y_BAR WIDTH HEIGHT <<< $(get_polybar_geometry $POLYBAR_WID)
  echo "Polybar Geometry: X=$X_BAR, Y=$Y_BAR, WIDTH=$WIDTH, HEIGHT=$HEIGHT"

  # Check if the mouse is over Polybar
  if (( X >= X_BAR && X <= X_BAR + WIDTH && Y >= Y_BAR && Y <= Y_BAR + HEIGHT )); then
    if [ $IS_VISIBLE -eq 0 ]; then
      xdotool windowmap $POLYBAR_WID
      IS_VISIBLE=1
      echo "Polybar shown"
    fi
  else
    if [ $IS_VISIBLE -eq 1 ]; then
      xdotool windowunmap $POLYBAR_WID
      IS_VISIBLE=0
      echo "Polybar hidden"
    fi
  fi

  sleep 0.1
done
