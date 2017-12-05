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
# Last modified date: 21/08/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################

# Xfce4 kbdleds plugin
#
if [ -f /tmp/xfce4-kbdleds-plugin.tar.bz2 ]; then
    rm /tmp/xfce4-kbdleds-plugin.tar.bz2
fi

if [ -d /tmp/xfce4-kbdleds-plugin-0.0.6 ]; then
    rm -fr /tmp/xfce4-kbdleds-plugin-0.0.6
fi

SRC_FILE="https://git.xfce.org/panel-plugins/xfce4-kbdleds-plugin/snapshot/xfce4-kbdleds-plugin-0.0.6.tar.bz2"
wget $SRC_FILE -O /tmp/xfce4-kbdleds-plugin.tar.bz2

# Installs necessary dependencies for compiling sources
#
sudo apt-get -y install intltool libxfce4ui-1-dev xfce4-panel-dev

# Compile source code
#
cd /tmp
sudo tar xjf xfce4-kbdleds-plugin.tar.bz2
cd xfce4-kbdleds-plugin-0.0.6/
sudo ./configure --prefix=/usr
make
sudo make install

sudo rm -fr /tmp/xfce4-kbdleds-plugin-0.0.6
rm /tmp/xfce4-kbdleds-plugin.tar.bz2

###################################################################

echo ""
echo "################################################################"
echo "# xfce4 kbdleds plugin installed                               #"
echo "################################################################"
