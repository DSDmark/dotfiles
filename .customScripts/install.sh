#!/bin/bash

# Function to detect Linux distribution
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

# Function to install packages based on distribution
install_packages() {
    local distro=$1
    case "$distro" in
        ubuntu)
            sudo apt-get update
            sudo apt-get install -y package1 package2 package3
            ;;
        centos)
            sudo yum install -y package1 package2 package3
            ;;
        arch)
            sudo pacman -Syu --noconfirm package1 package2 package3
            ;;
        *)
            echo "Unsupported distribution"
            exit 1
            ;;
    esac
}

# Main script
main() {
    local distribution=$(detect_distribution)
    if [ "$distribution" != "unknown" ]; then
        echo "Detected distribution: $distribution"
        echo "Installing packages..."
        install_packages "$distribution"
        echo "Packages installed successfully."
    else
        echo "Failed to detect distribution."
        exit 1
    fi
}

# Run main function
main
