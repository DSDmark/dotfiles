#!/bin/bash

TARGET_SSID="sunil-4G"
TARGET_PASS_KEY="88776655"  

# Command to reconnect to the specified WiFi network using nmcli
RECONNECT_COMMAND="nmcli device wifi connect $TARGET_SSID password $TARGET_PASS_KEY"

# Check if connected to the specified WiFi network
CURRENT_SSID=$(nmcli -t -f active,ssid dev wifi | grep '^yes' | cut -d ':' -f2)

if [[ "$CURRENT_SSID" != "$TARGET_SSID" ]]; then
    echo "Not connected to $TARGET_SSID. Attempting to reconnect..."
    $RECONNECT_COMMAND
else
    echo "Already connected to $TARGET_SSID."
fi
