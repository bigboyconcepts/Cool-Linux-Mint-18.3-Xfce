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

# Ubuntu Kernel Update Utility

sudo apt-add-repository -y ppa:teejee2008/ppa -y
sudo apt-get update
sudo apt-get install ukuu -y

###################################################################

echo ""
echo "################################################################"
echo "# ukuu installed                                               #"
echo "################################################################"
echo ""

