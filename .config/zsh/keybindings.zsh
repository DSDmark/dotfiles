# show previous command
bindkey '^P' up-line-or-search

# show next command
bindkey '^N' down-line-or-search

# end of list
bindkey '^e' end-of-line 

# beginning of line
bindkey '^a' beginning-of-line 

# adding sudo prefix 
bindkey -M emacs '^K' sudo-command-line
bindkey -M vicmd '^K' sudo-command-line
bindkey -M viins '^K' sudo-command-line
