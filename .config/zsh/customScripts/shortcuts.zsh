# Custom widget to prepend sudo
prepend_sudo() {
  if [[ -n $BUFFER ]]; then
    BUFFER="sudo $BUFFER"
  fi
  CURSOR=$#BUFFER
}
zle -N prepend_sudo

