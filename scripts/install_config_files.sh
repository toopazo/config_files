#!/usr/bin/env bash

# import external functions
# source common_functions.sh

#####################
# start of the script
#####################
# preprocessing_info

echo "Copying ~/.vimrc"
cp ../config_files/.vimrc ~/

echo "Copying ~/.tmux.conf"
cp ../config_files/.tmux.conf ~/

ls -all ~/
