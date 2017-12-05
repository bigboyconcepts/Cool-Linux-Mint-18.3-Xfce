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
# Last modified date: 09/06/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################

# https://github.com/LinxGem33/OSX-Arc-Darker

THEME_FILE="https://github.com/LinxGem33/OSX-Arc-Darker/archive/master.zip"

[ -d $HOME"/.themes" ] || mkdir -p $HOME"/.themes"

cd $HOME/.themes
wget $THEME_FILE

unzip master.zip
mv OSX-Arc-Darker-master/ OSX-Arc-Darker
rm master.zip

###################################################################

echo ""
echo "################################################################"
echo "# osx-arc-darker theme installed                               #"
echo "################################################################"
echo ""

