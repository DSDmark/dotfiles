#!/bin/bash

# Debugging: Log the call
echo "Called with: $1" >> /tmp/lf-preview.log

# Clear previous images
kitty +kitten icat --clear --silent

# Preview image if the file extension matches
case "$1" in
    *.jpg|*.jpeg|*.png|*.gif|*.bmp|*.tiff|*.svg|*.xpm)
        kitty +kitten icat --silent "$1"
        ;;
    *)
        exit 1
        ;;
esac
