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
# Start date        : 03/05/2017
# Last modified date: 03/05/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################

if [ -f /tmp/xnview-x64.deb ]; then
    rm /tmp/xnview-x64.deb
fi

wget http://download.xnview.com/XnViewMP-linux-x64.deb -O /tmp/xnview-x64.deb
sudo dpkg -i /tmp/xnview-x64.deb

rm /tmp/xnview-x64.deb

# Hardcode fix for xnview.desktop
#
echo "fixing hardcoded icon..."
old="Icon=\/opt\/XnView\/xnview.png"
new="Icon=xnview"
location="/usr/share/applications/XnView.desktop"
sudo sed -i s/$old/$new/g $location

###################################################################

echo ""
echo "################################################################"
echo "# xnview installed                                             #"
echo "################################################################"

