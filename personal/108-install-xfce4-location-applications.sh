#!/bin/bash
#
# #################################################################
#
# Written to be used on 64 bits computers
# Author            : TheGreatYellow67 (TgY67)
# Website           : https://github.com/thegreatyellow67
#
# Version           : v1
# Start date        : 05/05/2017
# Last modified date: 06/12/2017
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
echo "#########     Remote location applications      ################"
echo "################################################################"
echo ""

echo -e '\033[1;31m => Copying remote location applications (server.local shares)...'
echo -e '\033[0m'
sleep 2

if [ -z "${PERSONAL_FOLDER}" ]; then
  PERSONAL_FOLDER="$PWD"
fi

cp $PERSONAL_FOLDER/stuff/location-applications/Documents* $HOME/Documents/
cp $PERSONAL_FOLDER/stuff/location-applications/Downloads* $HOME/Downloads/
cp $PERSONAL_FOLDER/stuff/location-applications/Music* $HOME/Music/
cp $PERSONAL_FOLDER/stuff/location-applications/Pictures* $HOME/Pictures/
cp $PERSONAL_FOLDER/stuff/location-applications/Videos* $HOME/Videos/

echo "################################################################"
echo "#########    Remote location applications restored     #########"
echo "################################################################"
