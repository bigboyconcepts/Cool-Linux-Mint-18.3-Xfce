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
[ -d /tmp/sardi ] && rm -rf /tmp/sardi

# if there is no hidden folder then make one
[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"

wget -O /tmp/sardi.tar.gz "https://sourceforge.net/projects/sardi/files/latest/download?source=files"
mkdir /tmp/sardi
tar -zxf /tmp/sardi.tar.gz -C /tmp/sardi
rm /tmp/sardi.tar.gz
cp -rf /tmp/sardi/* ~/.icons/

# cleaning tmp
[ -d /tmp/sardi ] && rm -rf /tmp/sardi

###################################################################

echo ""
echo "################################################################"
echo "# icons sardi installed                                        #"
echo "################################################################"
echo ""

