#!/bin/bash
# Script to take the external environment (outside of our
# tmux bubble), and re-apply it, in case we've changed ssh
# sessions and X11 Forwarding has stopped workijng.
#

IFS=$'\n'
for command in `tmux show-environment -s`
do
    echo "$command"
    # The tmux command above returns a list of lines for a script
    # Otherwise, `eval` on arbiotrary input is not recommended.
    eval $command
done
