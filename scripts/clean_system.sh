#!/bin/bash

#####################
# start of the script
#####################

sudo apt-get update

#
sudo du -sh /var/cache/apt 
sudo apt-get autoclean -y 
sudo apt-get autoremove -y 

#
dh ~/.cache/thumbnails
rm -rf ~/.cache/thumbnails/*

#
# gtkorphan

#
# fslint_gui



