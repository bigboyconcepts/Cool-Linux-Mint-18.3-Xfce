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

# Downloading and installing latest variety
#
sudo add-apt-repository -y ppa:peterlevi/ppa
sudo apt-get update
sudo apt-get -y install variety

###################################################################

echo ""
echo "################################################################"
echo "# variety installed                                            #"
echo "################################################################"

