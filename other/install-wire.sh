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

# cleaning tmp
[ -f /tmp/wire_2.11.2661_amd64.deb ] && rm /tmp/wire_2.11.2661_amd64.deb

wget https://wire-app.wire.com/linux/wire_2.11.2685_amd64.deb -O /tmp/wire_2.11.2661_amd64.deb
sudo apt install -y libjpeg62:i386
sudo dpkg -i /tmp/wire_2.11.2661_amd64.deb

rm /tmp/wire_2.11.2661_amd64.deb

###################################################################

echo ""
echo "################################################################"
echo "# wire installed                                               #"
echo "################################################################"
echo ""

