#!/bin/bash

# import external functions
source common_functions.sh

#####################
# start of the script
#####################

preprocessing_info

sudo apt-get update

sudo apt-get install vim -y
sudo apt-get install vim-athena -y

sudo apt-get install screen -y

sudo apt-get install gedit -y
sudo apt-get install gedit-plugins -y

sudo apt-get install tmux -y

# lxde desktop
# sudo apt-get install lubuntu-desktop -y
# sudo apt-get purge unity* -y
# sudo apt-get install lubuntu-desktop -y

# synaptic (gui package manager)
sudo apt-get install synaptic -y

# svn
sudo apt-get install subversion -y

# git
sudo apt-get install git -y

# gitk
sudo apt-get install gitk -y

# kdiff3
sudo apt-get install kdiff3 -y

# cutecom
sudo apt-get install cutecom -y

# sl
sudo apt-get install sl -y

# thunar (file manager)
sudo apt-get install thunar -y

# veracrypt 
sudo apt-get install veracrypt -y

# latex
sudo apt-get install texstudio -y
sudo apt-get install texlive-publishers -y
sudo apt-get install texlive-generic-extra -y

# keybinding
sudo apt-get install xbindkeys -y
sudo apt-get install xbindkeys-config -y

# ARM gcc compilers (needed for px4 build)
sudo apt-get install gcc-arm-none-eabi -y 
sudo apt-get install genromfs -y
sudo pip install numpy toml
sudo apt-get install gcc-4.9 -y

# clean up
sudo apt-get autoclean -y 
sudo apt-get autoremove -y 

