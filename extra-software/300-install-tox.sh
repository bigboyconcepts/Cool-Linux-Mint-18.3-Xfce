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

echo "deb https://pkg.tox.chat/debian stable xenial" | sudo tee /etc/apt/sources.list.d/tox.list
wget -qO - https://pkg.tox.chat/debian/pkg.gpg.key | sudo apt-key add -
sudo apt-get install -y apt-transport-https
sudo apt-get update
sudo apt-get install -y utox

###################################################################

echo ""
echo "################################################################"
echo "# Tox IM installed                                             #"
echo "################################################################"

