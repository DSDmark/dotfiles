#!/bin/bash

#readonly RELEASE_FILE_PATH = '/etc/os-release'

detect_distribution() {
    if [ -f /etc/os-release ]; then
        # Source the os-release file
        . /etc/os-release
        # Check for common distributions
        if [ "$ID" = "ubuntu" ] || [ "$ID_LIKE" = "debian" ]; then
            echo "ubuntu"
        elif [ "$ID" = "centos" ] || [ "$ID_LIKE" = "rhel fedora" ]; then
            echo "centos"
        elif [ "$ID" = "arch" ]; then
            echo "arch"
        else
            echo "unknown"
        fi
    else
        echo "unknown"
    fi
}

