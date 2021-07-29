#!/bin/bash

# import external functions
# source common_functions.sh

#####################
# start of the script
#####################
# preprocessing_info

sudo apt-get update

#vim 
sudo apt-get install vim -y

#feh 
sudo apt-get install feh -y

#raspicam
sudo apt-get install raspistill -y
sudo apt-get install raspistillyuv -y
sudo apt-get install raspivid -y


