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
echo "#########            Keyboard shortcuts         ################"
echo "################################################################"
echo ""

echo -e '\033[1;31m => Copying shortcuts conf file...'
echo -e '\033[0m'
sleep 2

BACKUPDATE=`date "+%d%m%y-%H%M"`

mv ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts-$BACKUPDATE.xml

kill -9 $(pidof xfconfd)
kill -9 $(pidof xfsettingsd)

if [ -z "${PERSONAL_FOLDER}" ]; then
  PERSONAL_FOLDER="$PWD"
fi

cp $PERSONAL_FOLDER/settings/keyboard-shortcuts/xfce4-keyboard-shortcuts.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml

xfsettingsd &
/usr/lib/x86_64-linux-gnu/xfce4/xfconf/xfconfd &

echo "################################################################"
echo "#########       keyboard shortcuts set          ################"
echo "################################################################"

