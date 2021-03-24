#!/bin/bash

# import external functions
source common_functions.sh

#####################
# start of the script
#####################

preprocessing_info

# sudo dnf update

# sudo dnf install vim -y
# sudo dnf install vim-athena -y

sudo dnf install screen -y

sudo dnf install gedit -y
sudo dnf install gedit-plugins -y

sudo dnf install tmux -y

# lxde desktop
# sudo dnf install lubuntu-desktop -y
# sudo dnf purge unity* -y
# sudo dnf install lubuntu-desktop -y

# synaptic (gui package manager)
# sudo dnf install synaptic -y

# svn
sudo dnf install subversion -y

# git
sudo dnf install git -y

# gitk
sudo dnf install gitk -y

# kdiff3
sudo dnf install kdiff3 -y

# cutecom
sudo dnf install cutecom -y

# sl
sudo dnf install sl -y

# thunar (file manager)
sudo dnf install thunar -y

# veracrypt 
sudo dnf install veracrypt -y

# latex
sudo dnf install texstudio -y
sudo dnf install texlive-publishers -y
sudo dnf install texlive-generic-extra -y

# keybinding
# sudo dnf install xbindkeys -y
# sudo dnf install xbindkeys-config -y

# ARM gcc compilers (needed for px4 build)
sudo dnf install gcc-arm-none-eabi -y 
sudo dnf install genromfs -y
sudo pip install numpy toml
sudo dnf install gcc-4.9 -y

# clean up
# sudo dnf autoclean -y 
# sudo dnf autoremove -y 

