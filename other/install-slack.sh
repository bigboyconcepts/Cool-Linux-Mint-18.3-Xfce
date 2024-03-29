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

[ -f /tmp/slack-desktop-2.2.1-amd64.deb ] && rm /tmp/slack-desktop-2.2.1-amd64.deb

wget https://downloads.slack-edge.com/linux_releases/slack-desktop-2.2.1-amd64.deb -O /tmp/slack-desktop-2.2.1-amd64.deb
sudo dpkg -i /tmp/slack-desktop-2.2.1-amd64.deb

rm /tmp/slack-desktop-2.2.1-amd64.deb

echo "fixing hardcoded icon"
old="Icon=\/usr\/share\/pixmaps\/slack.png"
new="Icon=slack"
location="/usr/share/applications/slack.desktop"
sudo sed -i s/$old/$new/g $location

###################################################################

echo ""
echo "################################################################"
echo "# slack installed                                              #"
echo "################################################################"
echo ""

