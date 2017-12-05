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
# Last modified date: 13/06/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################

sudo apt-get -y install conky-all	# Highly configurable system monitor (all features enabled)
sudo apt-get -y install lm-sensors	# Utilities to read temperature/voltage/fan sensors
sudo apt-get -y install hddtemp		# Hard drive temperature monitoring utility

sudo add-apt-repository -y ppa:teejee2008/ppa
sudo apt-get update
sudo apt-get -y install conky-manager

###################################################################

echo ""
echo "################################################################"
echo "# conky & conky-manager installed                              #"
echo "################################################################"

