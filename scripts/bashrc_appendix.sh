#!/bin/bash

# toopazo
echo "creating Dropbox env variable .."
# export DROPBOX_HOME="/home/tzo4/Dropbox"
export DROPBOX_HOME="/mnt/sda4/Dropbox"
# export DROPBOX_HOME="/home/toopazo/Dropbox"
printenv | grep DROPBOX

# added for ROS Kinetic
echo "sourcing ROS Kinetic .."
source /opt/ros/kinetic/setup.bash
printenv | grep ROS

# tell everyone else where roscore is running
#export ROS_MASTER_URI=http://192.168.1.151:11311
#export ROS_IP=192.168.1.150
export ROS_MASTER_URI=http://10.42.0.1:11311
export ROS_IP=10.42.0.1
#export ROS_MASTER_URI=http://10.42.0.16:11311
#export ROS_IP=10.42.0.16

# adding /opt/pycharm to PATH
#PATH=$PATH:~/opt/pycharm-community-2017.1/bin

# seisan
echo "sourcing SEISAN .."
. /mnt/sda4/Dropbox/tomas/sismografo/software/seisan/COM/SEISAN.bash
alias select="/mnt/sda4/Dropbox/sismografo/software/seisan/PRO/select"
printenv | grep SEISAN

# added by Anaconda3 installer
echo "adding anaconda3 /bin to path .."
export PATH="/home/toopazo/anaconda3/bin:$PATH"
echo ${PATH}
echo "sourcing conda.."
source /home/toopazo/anaconda3/etc/profile.d/conda.sh
printenv | grep CONDA
conda info

