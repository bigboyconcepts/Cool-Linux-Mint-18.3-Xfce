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

#https://github.com/horst3180/arc-theme

[ -d /tmp/arc-theme ] && rm -rf /tmp/arc-theme

sudo apt-get install build-essential autoconf automake pkg-config libgtk-3-0 libgtk-3-dev -y
sudo apt-get -f install
git clone https://github.com/horst3180/arc-theme --depth 1 /tmp/arc-theme
cd /tmp/arc-theme
sh autogen.sh --prefix=/usr
sudo make install

rm -rf /tmp/arc-theme

###################################################################

echo ""
echo "################################################################"
echo "# arc-theme installed                                          #"
echo "################################################################"
echo ""

