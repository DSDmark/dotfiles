#!/bin/bash

screenEffect() {
  local message="$1"
  local delay=0.05

  tput clear

  local len=${#message}
  local rows=$(tput lines)
  local cols=$(tput cols)
  local row=$((rows / 2))
  local col=$(( (cols - len) / 2 ))

  tput setaf 2

  tput cup $row $col

  for (( i=0; i<len; i++ )); do
    printf "%s" "${message:$i:1}"
    sleep $delay
  done

  tput sgr0

  echo
}

fadeinEffect() {
  local message="$1"
  local duration="$2"  # duration in seconds
  local delay=0.05

  tput clear

  local len=${#message}
  local rows=$(tput lines)
  local cols=$(tput cols)
  local row=$((rows / 2))
  local col=$(( (cols - len) / 2 ))

  local iterations=$((duration / (len * delay)))

  for (( j=1; j<=iterations; j++ )); do
    tput cup $row $col

    for (( i=0; i<len; i++ )); do
      tput setaf $(( (i + j) % 8 + 1 )) # Cycle through colors
      printf "%s" "${message:$i:1}"
    done
    sleep $delay
  done

  tput sgr0

  echo
}

matrixEffect() {
  local message="$1"
  local delay=0.02
  local chars="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()_-+=[]{};:'\"\\|,<.>/?"
  local chars_len=${#chars}

  tput clear

  local len=${#message}
  local rows=$(tput lines)
  local cols=$(tput cols)
  local start_col=$(( (cols - len) / 2 ))

  tput setaf 2

  # Randomly generate characters falling down
  for (( i=0; i<len; i++ )); do
    local col=$((start_col + i))
    local char_index=$((RANDOM % chars_len))
    local char="${chars:$char_index:1}"
    tput cup 0 $col
    printf "%s" "$char"
    sleep $delay
  done

  tput cup 1 $start_col
  printf "%s" "$message"

  tput sgr0

  echo
}

loadingEffect() {
  local -r msg="$1"
  local -r delay="${2:-0.1}"
  local -r duration="${3:-10}"  # Default duration in seconds (10 seconds)
  local spinner='|/-\'
  local spinner_length=${#spinner}
  local i=0
  local endTime=$((SECONDS + duration))

  tput civis  # Hide cursor
  while [ $SECONDS -lt $endTime ]; do
    tput setaf 2  # Set color to green
    printf "\r%s %s" "$msg" "${spinner:i++%spinner_length:1}"
    tput sgr0  # Reset text attributes
    sleep "$delay"
  done
  tput cnorm  # Restore cursor
}


