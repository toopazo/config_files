#!/usr/bin/env bash
# import external functions
source common_functions.sh

#####################
# start of the script
#####################
preprocessing_info

echo "\nBienvenido\n"

echo "\nIniciando descarga de repos de github\n"

cd ~/repos

#spel-uchile
echo "\nspel-uchile\n"

echo "\nspel-uchile/SUCHAI\n"
git clone https://github.com/spel-uchile/SUCHAI.git
echo "\nspel-uchile/spel-uchile.github.io\n"
git clone https://github.com/spel-uchile/spel-uchile.github.io.git
echo "\nspel-uchile/gsSuchai\n"
git clone https://github.com/spel-uchile/gsSuchai.git
echo "\nspel-uchile/PIC24F\n"
git clone https://github.com/spel-uchile/PIC24F.git
echo "\nspel-uchile/TRX_GOMSPACE\n"
git clone https://github.com/spel-uchile/TRX_GOMSPACE.git


#registrador SPQR
echo "\nspel-uchile\n"

echo "\nspel-uchile/swspqr\n"
git clone https://github.com/spel-uchile/swspqr.git
echo "\nspel-uchile/placaSPQRads1274evm\n"
git clone https://github.com/spel-uchile/placaSPQRads1274evm.git
#echo "\nspel-uchile/test\n"
#git clone https://github.com/spel-uchile/test.git
echo "\nspel-uchile/placaSPQRtermocupla\n"
git clone https://github.com/spel-uchile/placaSPQRtermocupla.git
echo "\nspel-uchile/placaSPQRgps\n"
git clone https://github.com/spel-uchile/placaSPQRgps.git
echo "\nspel-uchile/ampInst\n"
git clone https://github.com/spel-uchile/ampInst.git
