# vim 
source "$ZDOTDIR/vimkeys.zsh"

# alias
source "$ZDOTDIR/aliases.zsh"

# shortcutkeys
source "$ZDOTDIR/shortcutkeys.zsh"

# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

# plugins
plug "zsh-users/zsh-syntax-highlighting"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"

# Load and initialise completion system
autoload -Uz compinit
compinit
