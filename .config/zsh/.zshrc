# custom scripts
source "$ZDOTDIR/customScripts/z.zsh"
source "$ZDOTDIR/customScripts/git.zsh"
source "$ZDOTDIR/customScripts/shortcuts.zsh"

#alias
source "$ZDOTDIR/aliases.zsh"

# shortcutkeys
source "$ZDOTDIR/keybindings.zsh"

# vim 
source "$ZDOTDIR/vimkeys.zsh"

# z command initialing
eval "$(zoxide init zsh)"

# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

# plugins
plug "zsh-users/zsh-syntax-highlighting"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zap-zsh/sudo"
plug "zap-zsh/vim"

# Load and initialise completion system
autoload -Uz compinit
compinit

