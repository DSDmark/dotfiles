source "$ZDOTDIR/customScripts/effects.zsh"

cd() {
 screenEffect "Please use 'z' instead of 'cd'."
z "$@"
}

