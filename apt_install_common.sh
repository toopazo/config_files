#!/bin/bash

# import external functions
# source common_functions.sh

#####################
# start of the script
#####################

# preprocessing_info

sudo apt update

sudo apt install vim -y
# sudo apt install vim-athena -y

sudo apt install screen -y

sudo apt install gedit -y
sudo apt install gedit-plugins -y

sudo apt install tmux -y

# lxde desktop
# sudo apt install lubuntu-desktop -y
# sudo apt purge unity* -y
# sudo apt install lubuntu-desktop -y

# synaptic (gui package manager)
# sudo apt install synaptic -y

# svn
# sudo apt install subversion -y

# git
sudo apt install git -y

# gitk
sudo apt install gitk -y

# kdiff3
sudo apt install kdiff3 -y

# cutecom
# sudo apt install cutecom -y

# sl
sudo apt install sl -y

# thunar (file manager)
# sudo apt install thunar -y

# veracrypt 
# sudo apt install veracrypt -y

# latex
#sudo apt install texstudio -y
#sudo apt install texlive-publishers -y
#sudo apt install texlive-generic-extra -y

# keybinding
#sudo apt install xbindkeys -y
#sudo apt install xbindkeys-config -y

# ARM gcc compilers (needed for px4 build)
#sudo apt install gcc-arm-none-eabi -y 
#sudo apt install genromfs -y
#sudo pip install numpy toml
#sudo apt install gcc-4.9 -y

# clean up
sudo apt autoclean -y 
sudo apt autoremove -y 

