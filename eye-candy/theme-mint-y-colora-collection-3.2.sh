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

# if there is no hidden folder then make one
[ -d $HOME"/.themes" ] || mkdir -p $HOME"/.themes"

# cleaning tmp
[ -d /tmp/Mint-Y-Colora-Theme-Collection ] && rm -rf /tmp/Mint-Y-Colora-Theme-Collection

git clone https://github.com/erikdubois/Mint-Y-Colora-Theme-Collection /tmp/Mint-Y-Colora-Theme-Collection
find /tmp/Mint-Y-Colora-Theme-Collection -maxdepth 1 -type f -exec rm -rf '{}' \;
cp -r /tmp/Mint-Y-Colora-Theme-Collection/Cinnamon\ 3.2/* ~/.themes/
rm -rf /tmp/Mint-Y-Colora-Theme-Collection

###################################################################

echo ""
echo "################################################################"
echo "# mint-y-themes installed                                      #"
echo "################################################################"
echo ""

