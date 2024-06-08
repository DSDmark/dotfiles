sv() {
    local dir="$1"
    if [ -d "$dir" ]; then
        z "$dir" && sudo -E nvim -u ~/.config/nvim/init.lua
    else
        echo "Directory not found: $dir"
    fi
}

