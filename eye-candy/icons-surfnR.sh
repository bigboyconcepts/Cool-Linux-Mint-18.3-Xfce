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

rm -rf /tmp/SurfnR
git clone https://github.com/thegreatyellow67/SurfnR /tmp/SurfnR
find /tmp/SurfnR -maxdepth 1 -type f -exec rm -rf '{}' \;

# if there is no hidden folder then make one
[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"

cp -rf /tmp/SurfnR/* ~/.icons/
rm -rf /tmp/SurfnR

echo "################################################################"
echo "###################   Icons SurfnR done   ######################"
echo "################################################################"
