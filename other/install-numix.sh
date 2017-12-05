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

# repo for numix themes
sudo add-apt-repository ppa:numix/ppa -y

# getting new info of this new repo
sudo apt-get -y update

# installing
sudo apt-get install -y numix-gtk-theme numix-icon-theme-circle

###################################################################

echo ""
echo "################################################################"
echo "# numix-gtk-theme, numix-icon-theme-circle installed           #"
echo "################################################################"
echo ""

