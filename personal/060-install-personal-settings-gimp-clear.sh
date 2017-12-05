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
echo "#########          gimp settings                ################"
echo "################################################################"
echo ""

# Backup existing folder if exists
#
if [ -d $HOME"/.gimp-2.8" ] && [ ! -d $HOME"/.gimp-2.8-old" ]; then
  mv $HOME"/.gimp-2.8" $HOME"/.gimp-2.8-old"
fi

if [ -d $HOME"/.gimp-2.8" ] && [ -d $HOME"/.gimp-2.8-old" ]; then
    if [ ! -d $HOME"/.gimp-2.8-clear" ]; then
        mv $HOME"/.gimp-2.8" $HOME"/.gimp-2.8-clear"
    else
        rm -fr $HOME"/.gimp-2.8-clear"
        mv $HOME"/.gimp-2.8" $HOME"/.gimp-2.8-clear"
    fi
fi

echo -e '\033[1;31m => Copying gimp settings...'
echo -e '\033[0m'
sleep 2

if [ -z "${PERSONAL_FOLDER}" ]; then
  PERSONAL_FOLDER="$PWD"
fi

cp $PERSONAL_FOLDER/settings/gimp/gimp-2.8-clear.tar.gz ~
cd $HOME; tar xzf gimp-2.8-clear.tar.gz
rm gimp-2.8-clear.tar.gz

if [ -n "${ROOT_FOLDER}" ]; then
  cd $ROOT_FOLDER
fi

echo "################################################################"
echo "#########          gimp settings installed      ################"
echo "################################################################"
