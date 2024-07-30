#!/bin/bash


session_name="kitty_tmux_session_$(date +%s)_$RANDOM"

# Check if the session already exists
if tmux has-session -t $session_name 2>/dev/null; then
    # Attach to the existing session
    tmux attach-session -t $session_name
else
    # Start a new session
    tmux new-session -s $session_name
fi
