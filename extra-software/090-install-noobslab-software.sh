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

# Add Noosbslab macbuntu repository
#
sudo add-apt-repository -y ppa:noobslab/macbuntu
sudo apt-get update

# Slingscold (Alternative to Launchpad)
#
sudo apt-get -y install slingscold

# Albert Spotlight (Alternative to Mac Spotlight)
#
sudo apt-get -y install albert

###################################################################

echo ""
echo "################################################################"
echo "# noobslab software installed                                  #"
echo "################################################################"

