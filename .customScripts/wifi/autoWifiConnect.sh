#!/bin/bash

# Define the specific WiFi network
TARGET_SSID="Airtel_braj_5983"

# Define the specific WiFi network
TARGET_SSID="Airtel_braj_5983"
PASS="Air02019"

# Command to reconnect to the specified WiFi network using nmcli
RECONNECT_COMMAND="nmcli device wifi connect '$TARGET_SSID' password '$PASS'"

# Check if connected to the specified WiFi network
CURRENT_SSID=$(nmcli -t -f active,ssid dev wifi | grep '^yes' | cut -d ':' -f2)

if [[ "$CURRENT_SSID" != "$TARGET_SSID" ]]; then
    echo "Not connected to $TARGET_SSID. Attempting to reconnect..."
    $RECONNECT_COMMAND
else
    echo "Already connected to $TARGET_SSID."
fi

