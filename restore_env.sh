#!/bin/bash

IFS=$'\n'
for command in `tmux show-environment -s`
do
    echo "$command"
    eval $command
done
