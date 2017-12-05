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
[ -d /tmp/Arc-Theme-Colora-Collection ] && rm -rf /tmp/Arc-Theme-Colora-Collection

git clone https://github.com/erikdubois/Arc-Theme-Colora-Collection /tmp/Arc-Theme-Colora-Collection
find /tmp/Arc-Theme-Colora-Collection -maxdepth 1 -type f -exec rm -rf '{}' \;
cp -r /tmp/Arc-Theme-Colora-Collection/Cinnamon\ 3.2/* ~/.themes/
rm -rf /tmp/Arc-Theme-Colora-Collection

###################################################################

echo ""
echo "################################################################"
echo "# arc colora themes installed                                  #"
echo "################################################################"
echo ""

