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

sudo apt-get -y install software-properties-common
sudo add-apt-repository -y ppa:team-xbmc/ppa
sudo apt-get update
sudo apt-get -y install kodi

echo ""
echo "################################################################"
echo "# kodi media center installed                                  #"
echo "################################################################"

