#!/bin/sh 
tmux new-session -d 'zsh'
tmux split-window -v 'watch git lg'
tmux split-window -h 'watch git status'
tmux -2 attach-session -d 
