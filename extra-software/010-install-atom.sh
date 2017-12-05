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
# Last modified date: 09/02/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################

if [ -f /tmp/atom-amd64.deb ]; then
    rm /tmp/atom-amd64.deb
fi

wget https://atom.io/download/deb -O /tmp/atom-amd64.deb
sudo dpkg -i /tmp/atom-amd64.deb

rm /tmp/atom-amd64.deb

###################################################################

echo ""
echo "################################################################"
echo "# atom installed                                               #"
echo "################################################################"

