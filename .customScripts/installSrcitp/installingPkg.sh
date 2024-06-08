#!/bin/bash

source ./detectDistro.sh
source ./installedPkg.sh

systemUpdateAndUpgrade() {
  local distro=$(distroName)
  
  case "$distro" in
    ubuntu)
      sudo apt-get update
      sudo apt-get upgrade -y
      ;;
    centos)
      sudo yum update -y
      ;;
    arch)
      sudo pacman -Syu --noconfirm
      ;;
    *)
      echo "Unsupported distribution"
      exit 1
      ;;
  esac
}

countDown() {
  local seconds=$1
  while [ $seconds -gt 0 ]; do
    echo -ne "Starting in $seconds seconds...\033[0K\r"
    sleep 1
    : $((seconds--))
  done
  echo -ne "Starting now...\033[0K\r"
  echo ""
}


installingPkg() {
  local distro=$1
  
  systemUpdateAndUpgrade

  echo "These packages going to install:"
  cat pkg.txt

  while IFS= read -r package; do
    if isPackageInstalled "$package"; then
      echo "Package '$package' is already installed."
    else
      countDown 30
      case "$distro" in
        ubuntu)
          sudo apt-get install -y "$package"
          ;;
        centos)
          sudo yum install -y "$package"
          ;;
        arch)
          sudo pacman -S --noconfirm "$package"
          ;;
        *)
          echo "Unsupported distribution"
          exit 1
          ;;
      esac
    fi
  done < pkg.txt
}
