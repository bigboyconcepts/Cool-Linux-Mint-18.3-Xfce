#!/bin/bash
#
# #################################################################
#
# Script for fast text replace in multiple files
#
# Written to be used on 64 bits computers
# Author            : TheGreatYellow6767 (TgY6767)
# Website           : https://github.com/thegreatyellow67
#
# Version           : v1
# Start date        : 05/05/2017
# Last modified date: 05/05/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################

LOCATION="$HOME/DATA/Cool-Linux-Mint-18.1-Xfce/extra-software/*.sh"
OLD="TgY"
NEW="TgY67"

for FILE in $LOCATION
do
    sed -i s/$OLD/$NEW/g $FILE
done
