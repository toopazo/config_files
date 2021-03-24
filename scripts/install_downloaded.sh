#!/usr/bin/env bash
clear

echo "\nBienvenido\n"

echo "\nIniciando instalaciones desde archivos descargados (\".run\", \".deb\", etc..)\n"

#not available from apt-get or another automated repo

#mplabx
echo "\nbajar desde: http://www.microchip.com/pagehandler/en-us/family/mplabx/ \n"
echo "\nRequires 32-Bit Compatibility Libraries, so "
echo "we install lib32 package\n"
sudo apt-get install lib32z1

echo "\nAhora se instalaran las versiones de Junio del 2014\n"
echo "\nXC8 (PIC16 y PIC18), XC16 (PIC24) y XC32 (PIC32)\n"
sudo ./xc8-v1.31-linux.run
sudo ./xc16-v1.21-linux-installer.run
sudo ./xc32-v1.32-linux-installer.run
echo "\nMPLABX\n"
sudo ./MPLABX-v2.10-linux-installer.run

#nomachine
echo "\nnomachine\n"
sudo dpkg -i nomachine_4.2.24_4_amd64.deb

#arduino IDE (para obtener soporta para Arduino Due)
#tar -zxvf myfile.tar.gz
sudo cp -r arduino-1.5.6-r2 /opt

#pycharm
sudo mv pycharm-community-3.4 /opt
cd /opt/pycharm-community-3.4/bin
sudo ./pycharm.sh
cd
