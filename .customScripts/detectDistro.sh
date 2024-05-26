#!/bin/bash

distroFileName="/etc/os-release"

distroName() {
  if [ -f "$distroFileName" ]; then
    . "$distroFileName" 
    if [ "$ID" = "ubuntu" ] || [ "$ID_LIKE" = "debian" ]; then
      echo "ubuntu"
    elif [ "$ID" = "centos" ] || [ "$ID_LIKE" = "rhel" ] || [ "$ID_LIKE" = "fedora" ]; then
      echo "centos"
    elif [ "$ID" = "arch" ]; then
      echo "arch"
    else
      echo "unknown"
      return 1
    fi
  else
    echo "unknown"
    return 1
  fi
}

