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
# Start date        : 09/02/2017
# Last modified date: 07/05/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################

# Xfce4 Hotcorner plugin
#
if [ -f /tmp/xfce4-hotcorner-amd64.deb ]; then
    rm /tmp/xfce4-hotcorner-amd64.deb
fi

HOTCORNER_FILE="http://ppa.launchpad.net/ubuntuhandbook1/apps/ubuntu/pool/main/x/xfce4-hotcorner-plugin/xfce4-hotcorner-plugin_0.0.2-0ubuntu1~15.10_amd64.deb"
wget $HOTCORNER_FILE -O /tmp/xfce4-hotcorner-amd64.deb
sudo dpkg -i /tmp/xfce4-hotcorner-amd64.deb

rm /tmp/xfce4-hotcorner-amd64.deb

###################################################################

echo ""
echo "################################################################"
echo "# xfce4 hotcorner plugin installed                             #"
echo "################################################################"

