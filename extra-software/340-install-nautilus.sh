#!/bin/bash
#
# #################################################################
#
# Written to be used on 64 bits computers
#
# Author            : TheGreatYellow67 (TgY67)
# Version           : v1
# Start date        : 19/08/2017
# Last modified date: 19/08/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################

sudo apt-get -y install nautilus        # File manager and graphical shell for GNOME

# Add nautilus extension for manage multimedia columns
#
sudo add-apt-repository -y ppa:nilarimogard/webupd8
sudo apt-get update
sudo apt-get -y install nautilus-columns

###################################################################

echo ""
echo "################################################################"
echo "# nautilus installed                                           #"
echo "################################################################"

