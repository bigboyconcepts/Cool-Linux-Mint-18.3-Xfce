#!/bin/bash
#
# #################################################################
#
# Written to be used on 64 bits computers
# Author            : 	Erik Dubois
# Website           : 	http://www.erikdubois.be
#
# Modified by       : TheGreatYellow67 (TgY67)
# Version           : v1
# Start date        : 30/04/2017
# Last modified date: 09/06/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################
set -e

echo ""
echo "################################################################"
echo "#########         xfce4 keyboard icons          ################"
echo "################################################################"
echo ""

echo -e '\033[1;31m => Installing xfce4 keyboard icons...'
echo -e '\033[0m'
sleep 2

if [ -z "${PERSONAL_FOLDER}" ]; then
  PERSONAL_FOLDER="$PWD"
fi

sudo cp $PERSONAL_FOLDER/stuff/icons/xfce4-keyboard-flags.tar.gz /usr/share/xfce4/xkb/

cd /usr/share/xfce4/xkb/
sudo tar xzf xfce4-keyboard-flags.tar.gz
sudo rm xfce4-keyboard-flags.tar.gz

if [ -n "${ROOT_FOLDER}" ]; then
  cd $ROOT_FOLDER
fi

echo "################################################################"
echo "#########     xfce4 keyboard icons installed    ################"
echo "################################################################"

