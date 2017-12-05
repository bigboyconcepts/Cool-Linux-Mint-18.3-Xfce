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
# Last modified date: 03/07/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################

# Downloading and installing Viber

if [ -f /tmp/viber.deb ]; then
    rm /tmp/viber.deb
fi

echo "Downloading Viber"

VIBER_FILE="http://download.cdn.viber.com/cdn/desktop/Linux/viber.deb"
wget $VIBER_FILE -O /tmp/viber.deb
sudo dpkg -i /tmp/viber.deb

rm /tmp/viber.deb

###################################################################

echo ""
echo "################################################################"
echo "# viber installed                                              #"
echo "################################################################"


