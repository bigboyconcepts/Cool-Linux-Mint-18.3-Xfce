#!/bin/bash
#
# #################################################################
#
# Written to be used on 64 bits computers
# Author            : 	Erik Dubois
# Website           : 	http://www.erikdubois.be
#
# Modified by       : TheGreatYellow67 (TgY67)
# Version           : v1
# Start date        : 30/04/2017
# Last modified date: 09/06/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################
set -e

echo ""
echo "################################################################"
echo "#########  Installing xfce4 appfinder bookmarks  ###############"
echo "################################################################"
echo ""

[ -d $HOME"/.config/xfce4/appfinder" ] || mkdir -p $HOME"/.config/xfce4/appfinder"

echo -e '\033[1;31m => Copying xfce4 appfinder bookmarks...'
echo -e '\033[0m'
sleep 2

if [ -z "${PERSONAL_FOLDER}" ]; then
  PERSONAL_FOLDER="$PWD"
fi

cp $PERSONAL_FOLDER/settings/appfinder/bookmarks ~/.config/xfce4/appfinder

echo "################################################################"
echo "#########  xfce4 appfinder bookmarks installed  ################"
echo "################################################################"
