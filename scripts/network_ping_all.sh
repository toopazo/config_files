#!/bin/bash

#####################
# start of the script
#####################
for i in `seq 1 255`;
do
    echo $i
    cmd="ping 10.42.0.${i} -c 2"
    eval $cmd
done

