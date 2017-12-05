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
echo "#########           terminal settings           ################"
echo "################################################################"
echo ""

echo -e '\033[1;31m => Copying terminal settings...'
echo -e '\033[0m'
sleep 2

if [ -z "${PERSONAL_FOLDER}" ]; then
  PERSONAL_FOLDER="$PWD"
fi

cp $PERSONAL_FOLDER/settings/terminal/terminalrc $HOME/.config/xfce4/terminal/terminalrc

[ -d $HOME"/.local/share/xfce4/" ] || mkdir -p $HOME"/.local/share/xfce4/"
[ -d $HOME"/.local/share/xfce4/terminal/" ] || mkdir -p $HOME"/.local/share/xfce4/terminal/"

cp -r $PERSONAL_FOLDER/settings/terminal/colorschemes/ $HOME/.local/share/xfce4/terminal/

echo "################################################################"
echo "#########       terminal settings copied        ################"
echo "################################################################"

