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

sudo add-apt-repository ppa:clipgrab-team/ppa -y
sudo apt-get update
sudo apt-get install clipgrab -y

###################################################################

echo ""
echo "################################################################"
echo "# clipgrab installed                                           #"
echo "################################################################"
echo ""

