
# enable colors
autoload -U colors && colors

# changing prompt
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# baseic auto/tab complete

# vi mode
bindkey -v
export KEYTIMEOUT=1

# vim keys 
source "$HOME/.config/zsh/.vimkeysrc"

