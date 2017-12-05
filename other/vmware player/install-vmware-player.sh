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

# cleaning tmp
[ -f /tmp/vmware-player.bundle ] && rm /tmp/vmware-player.bundle

# Get VMware-Player-12.5.3-5115892.x86_64.bundle

wget http://www.vmware.com/go/tryplayerpro-linux-64 -O /tmp/vmware-player.bundle

chmod +x /tmp/vmware-player.bundle

sudo /tmp/vmware-player.bundle

rm /tmp/vmware-player.bundle

echo "Start Vmware Player"

###################################################################

echo ""
echo "################################################################"
echo "# vmware-player installed                                      #"
echo "################################################################"
echo ""

