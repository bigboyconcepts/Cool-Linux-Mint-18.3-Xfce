#!/bin/bash
#
# #################################################################
#
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
#
# Modified by       : TheGreatYellow (TgY)
# Version           : v1
# Start date        : 09/02/2017
# Last modified date: 13/06/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################

echo "################################################################"
echo "Checking if git is installed"
echo "Install git for an easy installation"
echo "################################################################"

# G I T

# check if git is installed
if which git > /dev/null; then
  echo "git was installed. Proceding..."
else
  echo "################################################################"
  echo "installing git for this script to work"
  echo "################################################################"

  sudo apt-get install git -y
fi

# Cursors from official repo
#
echo ""
echo -e '\033[1;31m => Installing breeze-cursor-theme, dmz-cursor-theme...'
echo -e '\033[0m'
sleep 2

sudo apt-get -y install breeze-cursor-theme
sudo apt-get -y install dmz-cursor-theme

# Create .icons folder in $HOME if not exists
#
[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"

# #################################################################
# Capitaine Cursors
# https://www.gnome-look.org/p/1148692/
# #################################################################
#
echo ""
echo -e '\033[1;31m => Installing Capitaine cursors...'
echo -e '\033[0m'
sleep 2

CAPITAINE_CURSORS_FILE="https://dl.opendesktop.org/api/files/download/id/1489948557/capitaine-cursors-r2.tar.gz"

wget $CAPITAINE_CURSORS_FILE -O /tmp/capitaine-cursors.tar.gz
cd /tmp
tar xzf capitaine-cursors.tar.gz
cp -r /tmp/capitaine-cursors-r2/bin/xcursors $HOME/.icons/capitaine-cursors/

rm /tmp/capitaine-cursors.tar.gz
rm -fr /tmp/capitaine-cursors-r2/

# #################################################################
# OSX El Capitan Cursors
# https://www.gnome-look.org/p/1084939/
# #################################################################
#
echo -e '\033[1;31m => Installing OSX El Capitan cursors...'
echo -e '\033[0m'
sleep 2

OSX_ELCAPITAN_CURSORS_FILE="https://dl.opendesktop.org/api/files/download/id/1461053384/175749-OSX-ElCap.tar.bz2"

wget $OSX_ELCAPITAN_CURSORS_FILE -O /tmp/osx-elcapitan-cursors.tar.bz2
cd /tmp
tar xjf osx-elcapitan-cursors.tar.bz2

cp -r /tmp/OSX-ElCap/OSX-ElCap/ $HOME/.icons/OSX-ElCapitan/

rm /tmp/osx-elcapitan-cursors.tar.bz2
rm -fr /tmp/OSX-ElCap/

# #################################################################
# OSX El Capitan RED Cursors
# https://www.gnome-look.org/p/1170684/
# #################################################################
#
echo -e '\033[1;31m => Installing OSX El Capitan RED cursors...'
echo -e '\033[0m'
sleep 2

OSX_ELCAPITAN_RED_CURSORS_FILE="https://dl.opendesktop.org/api/files/download/id/1487018832/OSX-ElCap-RED.tar.gz"

wget $OSX_ELCAPITAN_RED_CURSORS_FILE -O /tmp/osx-elcapitan-red-cursors.tar.gz
cd /tmp
tar xzf osx-elcapitan-red-cursors.tar.gz

cp -r /tmp/OSX-ElCap-RED/ $HOME/.icons/OSX-ElCapitan-Red/

rm /tmp/osx-elcapitan-red-cursors.tar.gz
rm -fr /tmp/OSX-ElCap-RED/

# #################################################################
# Breeze Serie for Righties
# https://www.gnome-look.org/p/999991/
#
# Breeze All In One
# https://www.gnome-look.org/p/1099867/
#
# Breeze All In One includes all variations of Breeze cursor theme:
#
# http://kde-look.org/content/show.php/Breeze+Serie?content=169316,
#
# just in one theme called "Breeze All In One".
# Additionally, we'll have the possibility to choose for each variation,
# three sizes: Small, Medium and Large, increasing of one pixel between
# each variation within each size category. 
# In this case, we have 11 variations: Amber, Blue, Contrast, Hacked,
# Obsidian, Purple, Red, Snow, Default, Turquoise and White. 
# The real size of the cursors, are: 32 pixels for Small, 48 pixels
# for Medium, and 64 pixels for Large. 
# The initial sizes for choosing theme and category size are:
# 16 pixels for Small, 27 pixels for Medium, and 38 pixels for Large.

# Then we have:
# VARIATION	SMALL	MEDIUM	LARGE
#
#		32px	48px	64px
#
# Amber		16	27	38
# Blue		17	28	39
# Contrast	18	29	40
# Hacked	19	30	41
# Obsidian	20	31	42
# Purple	21	32	43
# Red		22	33	44
# Snow		23	34	45
# Default	24	35	46
# Turquoise	25	36	47
# White		26	37	48
#
# #################################################################
#
echo -e '\033[1;31m => Installing Breeze Serie cursors...'
echo -e '\033[0m'
sleep 2

cd /tmp/

git clone https://github.com/thegreatyellow67/Breeze-Serie-for-Righties-Cursors.git /tmp/breeze-serie

cd /tmp/breeze-serie/

for f in Breeze*.tgz; do tar xzf "$f" -C $HOME/.icons/; done;

rm -fr /tmp/breeze-serie

# #################################################################
# Rezo Serie for Righties
# https://www.gnome-look.org/p/999857/
# #################################################################
#
echo ""
echo -e '\033[1;31m => Installing Rezo Serie cursors...'
echo -e '\033[0m'
sleep 2

cd /tmp/

git clone https://github.com/thegreatyellow67/Rezo-Serie-for-Righties-Cursors.git /tmp/rezo-serie

cd /tmp/rezo-serie/

for f in Rezo*.tgz; do tar xzf "$f" -C $HOME/.icons/; done;

rm -fr /tmp/rezo-serie

# #################################################################
# OpenZone Cursors
# https://www.gnome-look.org/content/show.php/OpenZone?content=111343
# #################################################################
#
echo ""
echo -e '\033[1;31m => Installing OpenZone cursors...'
echo -e '\033[0m'
sleep 2

cd /tmp/

git clone https://github.com/thegreatyellow67/OpenZone-Cursors.git /tmp/openzone-cursors

cd /tmp/openzone-cursors/
cp -r OpenZone_* $HOME/.icons/

rm -fr /tmp/openzone-cursors/

if [ -n "${ROOT_FOLDER}" ]; then
  cd $ROOT_FOLDER
fi

###################################################################

echo ""
echo "################################################################"
echo "# cursors themes installed                                     #"
echo "################################################################"
echo ""

