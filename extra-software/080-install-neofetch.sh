#!/bin/bash
#
# #################################################################
#
# Written to be used on 64 bits computers
# Author            : Erik Dubois
# Website           : http://www.erikdubois.be
#
# Modified by       : TheGreatYellow67 (TgY67)
# Version           : v2
# Start date        : 05/12/2017
# Last modified date: 05/12/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################

# Repo for neofetch
#
sudo add-apt-repository -y ppa:dawidd0811/neofetch
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C52419204221BA96

# Getting new info of this new repo
#
sudo apt-get -y update

# Installing
#
sudo apt-get -y install neofetch

###################################################################

echo ""
echo "################################################################"
echo "# neofetch installed                                           #"
echo "################################################################"
