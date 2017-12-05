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

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ACCAF35C
sudo add-apt-repository "deb http://apt.insynchq.com/ubuntu xenial non-free contrib"
sudo apt-get update
sudo apt-get install -y insync

echo ""
echo "################################################################"
echo "# Insync installed                                             #"
echo "################################################################"

