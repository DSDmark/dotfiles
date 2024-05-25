# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias pn='pnpm'
alias la='ls -al'
alias sn='sudo nvim -u ~/.config/nvim/init.lua'
alias v="nvim"

# defaults
export EDITOR=nvim

PS1='\[\e[1;32m\]\u@\h:\[\e[0m\]\w\$ '


# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
