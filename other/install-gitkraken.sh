#!/bin/bash
#
# #################################################################
#
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
#
# Modified by       : TheGreatYellow (TgY)
# Version           : v1
# Start date        : 09/02/2017
# Last modified date: 09/02/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################

# Cleaning /tmp
[ -f /tmp/gitkraken-amd64.deb ] && sudo rm /tmp/gitkraken-amd64.deb

wget https://release.gitkraken.com/linux/gitkraken-amd64.deb -O /tmp/gitkraken-amd64.deb
sudo dpkg -i /tmp/gitkraken-amd64.deb

rm /tmp/gitkraken-amd64.deb

echo "fixing hardcoded icon"
old="Icon=app"
new="Icon=gitkraken"
location="/usr/share/applications/gitkraken.desktop"
sudo sed -i s/$old/$new/g $location

###################################################################

echo ""
echo "################################################################"
echo "# gitkraken installed                                          #"
echo "################################################################"
echo ""

