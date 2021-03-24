#!/bin/bash

# import external functions
source common_functions.sh

#####################
# start of the script
#####################
preprocessing_info

sudo apt-get update

sudo apt-get install python-pip -y
sudo apt-get install python3-pip -y

sudo apt-get install python-matplotlib -y
sudo apt-get install python3-matplotlib -y

sudo apt-get install python-numpy -y
sudo apt-get install python3-numpy -y

sudo apt-get install python-scipy -y
sudo apt-get install python3-scipy -y

sudo apt-get install python-obspy -y
sudo apt-get install python3-obspy -y

sudo apt-get install python-tornado -y
sudo apt-get install python3-tornado -y


