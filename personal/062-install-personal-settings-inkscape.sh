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
echo "#########             inkscape settings         ################"
echo "################################################################"
echo ""

echo -e '\033[1;31m => Copying inkscape settings...'
echo -e '\033[0m'
sleep 2

if [ -z "${PERSONAL_FOLDER}" ]; then
  PERSONAL_FOLDER="$PWD"
fi

cp $PERSONAL_FOLDER/settings/inkscape/inkscape.tar.gz ~/.config
cd ~/.config; tar xzf inkscape.tar.gz
rm inkscape.tar.gz

if [ -n "${ROOT_FOLDER}" ]; then
  cd $ROOT_FOLDER
fi

echo "################################################################"
echo "#########        inkscape settings copied       ################"
echo "################################################################"
