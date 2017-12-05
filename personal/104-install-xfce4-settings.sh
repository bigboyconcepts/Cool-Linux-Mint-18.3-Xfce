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
echo "#########             xfce4 settings            ################"
echo "################################################################"
echo ""

echo -e '\033[1;31m => Installing xfce4 settings...'
echo -e '\033[0m'
sleep 2

if [ -z "${PERSONAL_FOLDER}" ]; then
  PERSONAL_FOLDER="$PWD"
fi

CURRENT=$(date '+%Y-%m-%d')

cp $PERSONAL_FOLDER/settings/xfce4/panel.tar.gz $HOME/.config/xfce4
cp $PERSONAL_FOLDER/settings/xfce4/xfconf.tar.gz $HOME/.config/xfce4

cd $HOME/.config/xfce4

# Create backups of panel and xfconf dirs
#
tar czf panel-$CURRENT.tar.gz panel/
tar czf xfconf-$CURRENT.tar.gz xfconf/

xfce4-panel --quit
pkill xfconfd

rm -fr panel/
rm -fr xfconf/

tar xzf panel.tar.gz
tar xzf xfconf.tar.gz

rm panel.tar.gz xfconf.tar.gz

if [ -n "${ROOT_FOLDER}" ]; then
  cd $ROOT_FOLDER
fi

echo "################################################################"
echo "#########     xfce4 settings installed          ################"
echo "################################################################"

xfce4-panel > /dev/null 2>&1 &
