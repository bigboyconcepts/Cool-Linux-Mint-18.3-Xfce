#!/bin/bash
#
# #################################################################
#
# Written to be used on 64 bits computers
# Author            : Erik Dubois
# Website           : http://www.erikdubois.be
#
# Modified by       : TheGreatYellow67 (TgY67)
# Version           : v1
# Start date        : 03/07/2017
# Last modified date: 21/11/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################

# Downloading and installing Opera browser

if [ -f /tmp/opera-browser-amd64.deb ]; then
    rm /tmp/opera-browser-amd64.deb
fi

echo "Downloading opera browser latest stable edition"

OPERA_FILE="http://download3.operacdn.com/pub/opera/desktop/49.0.2725.39/linux/opera-stable_49.0.2725.39_amd64.deb"
wget $OPERA_FILE -O /tmp/opera-browser-amd64.deb
sudo dpkg -i /tmp/opera-browser-amd64.deb

rm /tmp/opera-browser-amd64.deb

###################################################################

echo ""
echo "################################################################"
echo "# Opera browser installed                                      #"
echo "################################################################"

