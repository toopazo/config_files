
# added for pycharm
#echo "adding /opt/pycharm to PATH  .."
#PATH=$PATH:~/opt/pycharm-community-2017.1/bin

# added for ROS Kinetic
source /opt/ros/kinetic/setup.bash
#source ~/catkin_ws/devel/setup.bash

# tell everyone else where roscore is running
#export ROS_HOSTNAME=localhost
#export ROS_IP=127.0.0.1
#export ROS_MASTER_URI=http://localhost:11311
#export ROS_MASTER_URI=http://192.168.1.151:11311
#export ROS_IP=192.168.1.150
#export ROS_MASTER_URI=http://10.42.0.1:11311
#export ROS_IP=10.42.0.1
export ROS_MASTER_URI=http://192.168.1.113:11311
export ROS_IP=192.168.1.111
printenv | grep ROS

# add default python libraries to current path 
export PYTHONPATH=$PYTHONPATH:/usr/lib/python2.7/dist-packages

# added by Anaconda2 installer
# export PATH="/home/tzo4/anaconda2/bin:$PATH"
# unset PYTHONPATH
# conda info -a

# added by Anaconda3 installer
export PATH="/home/tzo4/anaconda3/bin:$PATH"
unset PYTHONPATH
conda info -a

# seisan
echo "sourcing SEISAN .."
# . /home/tzo4/Dropbox/sismografo/software/seisan/COM/SEISAN.bash
. /mnt/sda4/Dropbox/sismografo/software/seisan/COM/SEISAN.bash
alias select="/home/tzo4/Dropbox/sismografo/software/seisan/PRO/select"
alias select="/mnt/sda4/Dropbox/sismografo/software/seisan/PRO/select"
printenv | grep SEISAN

