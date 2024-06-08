#!/bin/bash

source ./detectDistro.sh

isPackageInstalled() {
  local package=$1
  local distro=$(distroName)
  
  case "$distro" in
    ubuntu)
      dpkg -s "$package" &> /dev/null
      ;;
    centos)
      rpm -q "$package" &> /dev/null
      ;;
    arch)
      pacman -Q "$package" &> /dev/null
      ;;
    *)
      return 1
      ;;
  esac
}

