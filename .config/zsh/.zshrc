# custom scripts
source "$ZDOTDIR/customScripts/z.zsh"
source "$ZDOTDIR/customScripts/git.zsh"
source "$ZDOTDIR/customScripts/nvim.zsh"

#alias
source "$ZDOTDIR/aliases.zsh"

# shortcutkeys
source "$ZDOTDIR/keybindings.zsh"

# z command initialing
eval "$(zoxide init zsh)"

# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

# bun.js
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

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


# bun completions
[ -s "/home/dsdmark/.bun/_bun" ] && source "/home/dsdmark/.bun/_bun"

# autostart utils
fastfetch

