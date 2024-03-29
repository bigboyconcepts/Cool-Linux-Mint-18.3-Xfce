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

sudo add-apt-repository -y ppa:atareao/telegram
sudo apt-get update
sudo apt-get install telegram -y

echo "fixing hardcoded icon"
old="Icon=\/opt\/telegram\/telegram.svg"
new="Icon=telegram"
location="/usr/share/applications/telegram.desktop"
sudo sed -i s/$old/$new/g $location

###################################################################

echo ""
echo "################################################################"
echo "# telegram installed                                           #"
echo "################################################################"


