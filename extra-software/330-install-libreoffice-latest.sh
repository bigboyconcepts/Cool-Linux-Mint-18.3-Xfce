#!/bin/bash
#
# #################################################################
#
# Written to be used on 64 bits computers
# Author            : TheGreatYellow67 (TgY67)
# Website           : http://github.com/thegreatyellow67
#
# Modified by       : TheGreatYellow67 (TgY67)
# Version           : v1
# Start date        : 03/07/2017
# Last modified date: 05/12/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################

# Downloading and installing latest version of LibreOffice 5.x

# CHANGE THIS!
#
LIBREOFFICE_VER="5.4.3"
DEB_DIR="LibreOffice_5.4.3.2_Linux_x86-64_deb"
LIBREOFFICE_FILE="http://mirror.e4a.it/tdf/libreoffice/stable/5.4.3/deb/x86_64/LibreOffice_5.4.3_Linux_x86-64_deb.tar.gz"

# ################################################################

echo "Removing bundled LibreOffice..."

sudo apt-get -y remove libreoffice-core

if [ -f /tmp/LibreOffice.tar.gz ]; then
    rm /tmp/LibreOffice.tar.gz
fi

if [ -d /tmp/$DEB_DIR ]; then
    rm -fr /tmp/$DEB_DIR/
fi

wget $LIBREOFFICE_FILE -O /tmp/LibreOffice.tar.gz

tar xzvf /tmp/LibreOffice.tar.gz -C /tmp/

echo "Installing LibreOffice $LIBREOFFICE_VER..."

sudo dpkg -i /tmp/$DEB_DIR/DEBS/*.deb

rm /tmp/LibreOffice.tar.gz
rm -fr /tmp/$DEB_DIR/

old="Icon=libreoffice5.4-startcenter"
new="Icon=libreoffice-startcenter"
location="/usr/share/applications/libreoffice5.4-startcenter.desktop"
sudo sed -i s/$old/$new/g $location

old="Icon=libreoffice5.4-base"
new="Icon=libreoffice-base"
location="/usr/share/applications/libreoffice5.4-base.desktop"
sudo sed -i s/$old/$new/g $location

old="Icon=libreoffice5.4-calc"
new="Icon=libreoffice-calc"
location="/usr/share/applications/libreoffice5.4-calc.desktop"
sudo sed -i s/$old/$new/g $location

old="Icon=libreoffice5.4-draw"
new="Icon=libreoffice-draw"
location="/usr/share/applications/libreoffice5.4-draw.desktop"
sudo sed -i s/$old/$new/g $location

old="Icon=libreoffice5.4-math"
new="Icon=libreoffice-math"
location="/usr/share/applications/libreoffice5.4-math.desktop"
sudo sed -i s/$old/$new/g $location

old="Icon=libreoffice5.4-writer"
new="Icon=libreoffice-writer"
location="/usr/share/applications/libreoffice5.4-writer.desktop"
sudo sed -i s/$old/$new/g $location

###################################################################

echo ""
echo "################################################################"
echo "# Latest LibreOffice installed                                 #"
echo "################################################################"
