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
echo "#########          xfce4 weather icons          ################"
echo "################################################################"
echo ""

echo -e '\033[1;31m => Installing xfce4 weather icons...'
echo -e '\033[0m'
sleep 2

if [ -z "${PERSONAL_FOLDER}" ]; then
  PERSONAL_FOLDER="$PWD"
fi

[ -d $HOME"/.config/xfce4/weather/icons" ] || mkdir -p $HOME"/.config/xfce4/weather/icons"

cp $PERSONAL_FOLDER/stuff/icons/xfce4-weather-mono-icons.tar.gz $HOME/.config/xfce4/weather/icons/
cp $PERSONAL_FOLDER/stuff/icons/xfce4-weather-clima-icons.tar.gz $HOME/.config/xfce4/weather/icons/
cp $PERSONAL_FOLDER/stuff/icons/xfce4-weather-faenza-icons.tar.gz $HOME/.config/xfce4/weather/icons/

cd $HOME/.config/xfce4/weather/icons/
tar xzf xfce4-weather-mono-icons.tar.gz
tar xzf xfce4-weather-clima-icons.tar.gz
tar xzf xfce4-weather-faenza-icons.tar.gz

rm xfce4-weather-mono-icons.tar.gz
rm xfce4-weather-clima-icons.tar.gz
rm xfce4-weather-faenza-icons.tar.gz

if [ -n "${ROOT_FOLDER}" ]; then
  cd $ROOT_FOLDER
fi

echo "################################################################"
echo "#########     xfce4 weather icons installed     ################"
echo "################################################################"

