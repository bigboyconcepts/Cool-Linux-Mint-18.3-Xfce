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
echo "#########         Setting system sounds         ################"
echo "################################################################"
echo ""

echo -e '\033[1;31m => Setting system sounds...'
echo -e '\033[0m'
sleep 2

if [ -z "${PERSONAL_FOLDER}" ]; then
  PERSONAL_FOLDER="$PWD"
fi

xfconf-query -c xsettings -p /Net/EnableEventSounds -s true
xfconf-query -c xsettings -p /Net/EnableInputFeedbackSounds -s true
xfconf-query -c xsettings -p /Net/SoundThemeName -t string -s freedesktop --create

sudo cp $PERSONAL_FOLDER/settings/system-sounds/52libcanberra* /etc/X11/Xsession.d
sudo cp $PERSONAL_FOLDER/settings/system-sounds/freedesktop-theme-pathed.tar.gz /usr/share/sounds

sudo apt-get install -y sox gnome-session-canberra

cd /usr/share/sounds
sudo rm -fr freedesktop
sudo tar xzf freedesktop-theme-pathed.tar.gz
sudo rm freedesktop-theme-pathed.tar.gz

if [ -n "${ROOT_FOLDER}" ]; then
  cd $ROOT_FOLDER
fi

echo "################################################################"
echo "#########     Setting system sounds completed        ###########"
echo "################################################################"

