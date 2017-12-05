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
# Last modified date: 09/06/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################

echo ""
echo -e '\033[1;31mPlease enable source code repositories if not yet done...'
echo -e '\033[0m'
read -n 1 -s -p "Press a key to run software-sources "
printf "\n\n"

# Opens software-sources to enable source code repositories
#
software-sources

read -n 1 -s -p "Waiting until software-sources ends. Press a key to continue "
printf "\n"

# Xfce4 weather plugin updated version 0.8.9
#
sudo apt-get -y remove --purge xfce4-weather-plugin

sudo apt-get -y install build-essential
sudo apt-get -y build-dep xfce4-weather-plugin

if [ -f /tmp/xfce4-weather-plugin.tar.bz2 ]; then
    rm /tmp/xfce4-weather-plugin.tar.bz2
fi

WEATHER_PLUGIN_FILE="https://git.xfce.org/panel-plugins/xfce4-weather-plugin/snapshot/xfce4-weather-plugin-0.8.9.tar.bz2"

wget $WEATHER_PLUGIN_FILE -O /tmp/xfce4-weather-plugin.tar.bz2
cd /tmp/
tar xjf xfce4-weather-plugin.tar.bz2
cd xfce4-weather-plugin-0.8.9/
sh ./autogen.sh
./configure --prefix=/usr --libdir=/usr/lib/$(uname -m)-linux-gnu --disable-debug
make
sudo make install

sudo rm -fr /tmp/xfce4-weather-plugin-0.8.9/
rm /tmp/xfce4-weather-plugin.tar.bz2

###################################################################

echo ""
echo "################################################################"
echo "# xfce4 weather plugin installed                               #"
echo "################################################################"

