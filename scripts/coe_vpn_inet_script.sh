#!/bin/bash

echo "Editing /etc/resolv.conf to allow inet access while connected to vpn"

file=/etc/resolv.conf
coe_ip=130.203.201.117
coe_addr=engr.psu.edu

sudo sed -i 's/nameserver .*/nameserver '$coe_ip'/' $file
sudo sed -i 's/search .*/search '$coe_addr'/' $file
