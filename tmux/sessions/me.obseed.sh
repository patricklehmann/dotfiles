#!/bin/sh

# Set Session Name
SESSION="me_obseed"
WORKING_DIRECTORY=/Users/patricklehmann/development/me.obseed

SESSIONEXISTS=$(tmux list-sessions | grep $SESSION)

# Only create tmux session if it doesn't already exist
if [ "$SESSIONEXISTS" = "" ]
then
    # Start New Session with our name
    tmux new-session -d -s $SESSION

    # Name first Pane and start zsh
    tmux rename-window -t 0 'Main'
    tmux send-keys -t 'Main' 'zsh' C-m 'clear' C-m # Switch to bind script?

    tmux split-window -v
    tmux selectp -t 0
    tmux split-window -h

    # Initialisiere ruby server
    cd $WORKING_DIRECTORY

    # Initialisiere webpack

    #

    # # Create and setup pane for hugo server
    # tmux new-window -t $SESSION:1 -n 'Sidekiq'
    # tmux send-keys -t 'Hugo Server' 'hugo serve -D -F' C-m # Switch to bind script?

    # # setup Writing window
    # tmux new-window -t $SESSION:2 -n 'Writing'
    # tmux send-keys -t 'Writing' "nvim" C-m

    # # Setup an additional shell
    # tmux new-window -t $SESSION:3 -n 'Shell'
    # tmux send-keys -t 'Shell' "zsh" C-m 'clear' C-m
fi

# Attach Session, on the Main window
tmux attach-session -t $SESSION:0