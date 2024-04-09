#!/bin/bash

 connected_device=$(bluetoothctl info | grep "Name" | cut -d' ' -f2-)

if [ -n "$connected_device" ]; then
    echo $connected_device 
else
    echo "no"
fi

