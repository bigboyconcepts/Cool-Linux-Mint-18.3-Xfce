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
# Start date        : 10/06/2017
# Last modified date: 10/06/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################

#https://github.com/lassekongo83/plano-theme

# cleaning tmp
#
[ -d /tmp/plano-theme ] && rm -rf /tmp/plano-theme

# installs some dependencies
#
sudo apt-get -y install gtk2-engines-murrine	# cairo-based gtk+-2.0 theme engine
sudo apt-get -y install gtk2-engines-pixbuf	# pixbuf-based theme for GTK+ 2.x 

# download files from github repo
#
git clone https://github.com/lassekongo83/plano-theme.git --depth 1 /tmp/plano-theme
rm -fr /tmp/plano-theme/.git
rm /tmp/plano-theme/.git*

cp -r /tmp/plano-theme $HOME/.themes/

# deletes plano-theme folder in /tmp/
#
rm -rf /tmp/plano-theme

# Plano Variants Xfwm
# (https://www.xfce-look.org/p/1174518/)
#
PLANO_VARIANTS_FILE="https://dl.opendesktop.org/api/files/download/id/1491927405/Plano-Variants-Xfwm.zip"

wget $PLANO_VARIANTS_FILE -O /tmp/plano-variants.zip

cd /tmp
unzip plano-variants.zip
cd Plano\ Variants\ Xfwm/
cp -r Plano-*/ $HOME/.themes/

# cleanup
#
rm -fr /tmp/Plano\ Variants\ Xfwm/
rm /tmp/plano-variants.zip

###################################################################

echo ""
echo "################################################################"
echo "# plano theme and plano variants installed                     #"
echo "################################################################"
echo ""

