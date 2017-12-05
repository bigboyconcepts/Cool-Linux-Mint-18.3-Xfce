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

# repo for grub-customizer
sudo add-apt-repository -y ppa:danielrichter2007/grub-customizer

# getting new info of this new repo
sudo apt-get -y update

# installing
sudo apt-get -y install grub-customizer

###################################################################

echo ""
echo "################################################################"
echo "# grub-customizer installed                                    #"
echo "################################################################"
echo ""

