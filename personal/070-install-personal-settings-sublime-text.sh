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
echo "#########         sublime text 3 settings       ################"
echo "################################################################"
echo ""

echo -e '\033[1;31m => Copying sublime text 3 settings...'
echo -e '\033[0m'
sleep 2

if [ -z "${PERSONAL_FOLDER}" ]; then
  PERSONAL_FOLDER="$PWD"
fi

cp $PERSONAL_FOLDER/settings/sublime-text-3/sublime-text-3.tar.gz ~/.config/
cd ~/.config/; tar xzf sublime-text-3.tar.gz
rm sublime-text-3.tar.gz

if [ -n "${ROOT_FOLDER}" ]; then
  cd $ROOT_FOLDER
fi

echo "################################################################"
echo "#########     sublime text 3 settings copied    ################"
echo "################################################################"

