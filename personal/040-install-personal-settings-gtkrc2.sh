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
echo "#########     Installing gtk2 customizations    ################"
echo "################################################################"
echo ""

echo -e '\033[1;31m => Copying gtk2 files...'
echo -e '\033[0m'
sleep 2

if [ -z "${PERSONAL_FOLDER}" ]; then
  PERSONAL_FOLDER="$PWD"
fi

cp $PERSONAL_FOLDER/settings/gtkrc-2.0/gtkrc-2.0 $HOME/.gtkrc-2.0

# See post: https://forum.xfce.org/viewtopic.php?id=11576
#
cp $PERSONAL_FOLDER/settings/gtkrc-2.0/trans.png $HOME/

echo "################################################################"
echo "#########    gtk2 customizations installed      ################"
echo "################################################################"
