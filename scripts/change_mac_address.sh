
ifconfig enp4s0
sudo /etc/init.d/networking stop
sudo ifconfig enp4s0 hw ether 02:01:02:03:04:08
sudo /etc/init.d/networking start
ifconfig enp4s0

