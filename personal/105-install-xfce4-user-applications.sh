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
echo "#########           User applications           ################"
echo "################################################################"
echo ""

echo -e '\033[1;31m => Restoring user applications'
echo -e '\033[1;31m => in ~/.local/share/applications...'
echo -e '\033[0m'
sleep 2

if [ -z "${PERSONAL_FOLDER}" ]; then
  PERSONAL_FOLDER="$PWD"
fi

cp $PERSONAL_FOLDER/stuff/applications/user-applications.tar.gz $HOME/.local/share/

cd $HOME/.local/share/
tar xzf user-applications.tar.gz
rm user-applications.tar.gz
chmod +x $HOME/.local/share/applications/*.desktop

if [ -n "${ROOT_FOLDER}" ]; then
  cd $ROOT_FOLDER
fi

echo "################################################################"
echo "#########     User applications restored        ################"
echo "################################################################"
