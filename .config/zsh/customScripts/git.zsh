#!/bin/bash

gt() {
  local commit_message="$1"

  if [ -z "$commit_message" ]; then
    echo "Commit message is required."
    return 1
  fi

  git add .

  git commit -m "$commit_message"

  read -p "Default branch is master, do you want to push to master? [y/n] " response

  if [[ "$response" == "y" || "$response" == "" ]]; then
    git push origin master
  else
    git push origin main
  fi
}
