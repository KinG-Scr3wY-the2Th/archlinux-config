#!/bin/sh
tmux new-session -d -s 0
tmux new-window -t 0:0 -n 'root'
tmux new-window -t 0:1 -n 'home'
tmux new-window -t 0:2 -n 'code'
tmux new-window -t 0:3 -n 'oracle'
tmux new-window -t 0:4 -n 'db2'
tmux select-window -t 0:0
tmux -2 attach-session -t 0
