#!/bin/bash

source ./detectDistro.sh
source ./installingPkg.sh

# Main script
main() {
  local distribution=$(distroName)
  if [ "$distribution" != "unknown" ]; then
    echo "Detected distribution: $distribution"
    echo "Installing packages..."
    installingPkg "$distribution"
    echo "Packages installed successfully."
  else
    echo "Failed to detect distribution."
    exit 1
  fi
}

# Run main function
main
