#!/bin/bash
set -e
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
# Last modified date: 06/05/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################

echo "Force install..."
sudo apt-get -f -y install
echo ""
echo "Upgrade..."
sudo apt-get upgrade -y
echo ""
echo "Autoremove..."
sudo apt-get autoremove -y
echo ""
echo "Autoclean..."
sudo apt-get autoclean -y
