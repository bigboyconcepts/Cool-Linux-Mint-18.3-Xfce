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
# Last modified date: 09/06/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################

wget http://ftp.de.debian.org/debian/pool/main/libg/libgcrypt11/libgcrypt11_1.5.0-5+deb7u4_amd64.deb -O /tmp/libgcrypt11.deb
wget https://github.com/adobe/brackets/releases/download/release-1.9/Brackets.Release.1.9.64-bit.deb -O /tmp/brackets.deb

sudo dpkg -i /tmp/libgcrypt11.deb
sudo dpkg -i /tmp/brackets.deb

rm /tmp/brackets.deb
rm /tmp/libgcrypt11.deb

###################################################################

echo ""
echo "################################################################"
echo "# Brackets installed                                           #"
echo "################################################################"

