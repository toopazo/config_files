#!/bin/bash

# import external functions
source common_functions.sh

#####################
# start of the script
#####################
preprocessing_info

echo "\nHello world !\n"

echo "\nInstalling ROS ..\n"a

# instructions from

# Setup your computer to accept software from packages.ros.org. 
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

# Set up your keys
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

# update repos
sudo apt-get update

# install main package
sudo apt-get install ros-kinetic-ros-base -y

# install rosdep
sudo apt-get install python-rosdep

# Initialize rosdep
sudo rosdep init
rosdep update
# rosdep install --from-paths src --ignore-src
# rosdep install package_name

# install python bindings
sudo apt-get install python-rosinstall python-rosinstall-generator python-wstool build-essential

