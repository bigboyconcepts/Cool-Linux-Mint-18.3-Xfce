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

sudo apt-get -y install birdfont	# Font editor that lets you create outline vector graphics and export fonts
sudo apt-get -y install libxmlbird1     # XML parser written in Vala
sudo apt-get -y install libxmlbird-dev  # XML parser written in Vala (development files)

# Workaround for birdfont
sudo ln /usr/lib/x86_64-linux-gnu/libxmlbird.so.1 /usr/lib/x86_64-linux-gnu/libxmlbird.so.1.0

###################################################################

echo ""
echo "################################################################"
echo "# birdfont installed                                           #"
echo "################################################################"

