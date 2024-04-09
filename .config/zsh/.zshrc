
# enable colors
autoload -U colors && colors

# changing prompt
#PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
#PS1='%F{green}%n@%m %~ %# %f'
#PS1='%F{cyan}%n@%m %~$(git_prompt_info) %# %f'
#PS1='%F{green}%n@%m%f %F{blue}%~%f %F{magenta}%#%f '
#PS1='%F{red}%~ %F{green}%# %f'
#PS1='%F{yellow}💻 %n@%m %~ %# %f'
#PS1='%F{green}┌─[%n@%m:%~]─%F{blue}%#%F{green}─%f '
PS1='%F{green}➜ %F{yellow}%~%f %# '

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

#
# added config files
#

# vim 
source "$ZDOTDIR/vimkeys.zsh"

# alias
source "$ZDOTDIR/aliases.zsh"

# shortcutkeys
source "$ZDOTDIR/shortcutkeys.zsh"

