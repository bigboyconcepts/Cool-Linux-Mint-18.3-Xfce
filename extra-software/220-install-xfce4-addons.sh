#!/bin/bash
#
# #################################################################
#
# Written to be used on 64 bits computers
# Author            : Erik Dubois
# Website           : http://www.erikdubois.be
#
# Modified by       : TheGreatYellow67 (TgY67)
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

# Xfce4 Addons

sudo apt-get -y install xfpanel-switch					# Layout manager for the Xfce panel
sudo apt-get -y install xfce4-notes					# Notes application for the Xfce4 desktop
sudo apt-get -y install xfce4-notes-plugin				# Notes plugin for the Xfce4 desktop

# Xfce4 DockBarX plugin
#
sudo add-apt-repository -y ppa:dockbar-main/ppa
sudo apt-get update
sudo apt-get install -y --install-recommends xfce4-dockbarx-plugin	# DockBarX plugin for Xfce
sudo apt-get install -y dockbarx-themes-extra				# DockBarX themes

# DockbarX Extra Themes
#
[ -d $HOME"/.dockbarx" ] || mkdir -p $HOME"/.dockbarx"
[ -d $HOME"/.dockbarx/themes" ] || mkdir -p $HOME"/.dockbarx/themes"

DOCKBARX_THEMES_FILE="https://github.com/thegreatyellow67/DockbarX-themes/archive/master.zip"

wget $DOCKBARX_THEMES_FILE -O /tmp/dockbarx-themes.zip
unzip /tmp/dockbarx-themes.zip -d /tmp/ > /dev/null 2>&1

cp /tmp/DockbarX-themes-master/themes/* $HOME/.dockbarx/themes/
cp -r /tmp/DockbarX-themes-master/popup_styles/ $HOME/.dockbarx/themes/
cp -r /tmp/DockbarX-themes-master/dock/ $HOME/.dockbarx/themes/

rm /tmp/dockbarx-themes.zip
rm -fr /tmp/DockbarX-themes-master/

# Keylock Indicator
#
sudo add-apt-repository -y ppa:tsbarnes/indicator-keylock
sudo apt-get update
sudo apt-get -y install indicator-keylock				# Indicator-keylock - Indicator for Lock Keys

# Tomboy Notes Indicator
#
sudo apt-get -y install tomboy						# Desktop note taking program using Wiki style links

###################################################################

echo ""
echo "################################################################"
echo "# xfce4 addons installed                                       #"
echo "################################################################"
