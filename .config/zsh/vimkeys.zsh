# Enable vi mode
bindkey -v

# key bindings
bindkey -M vicmd 'jj' vi-cmd-mode

# seting inset mode initailly
zle-line-init() {
    zle -K viins 
    echo -ne "\e[5 q"
}

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}


# using the fucntions
zle -N zle-line-init
zle -N zle-keymap-select
