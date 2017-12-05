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
[ -f /tmp/discord-canary-0.0.9.deb ] && rm /tmp/discord-canary-0.0.9.deb

wget https://discordapp.com/api/download/canary?platform=linux -O /tmp/discord-canary-0.0.9.deb
sudo dpkg -i /tmp/discord-canary-0.0.9.deb

rm /tmp/discord-canary-0.0.9.deb

###################################################################

echo ""
echo "################################################################"
echo "# discord-canary installed                                     #"
echo "################################################################"
echo ""

