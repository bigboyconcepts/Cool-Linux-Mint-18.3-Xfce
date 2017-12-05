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
# Last modified date: 09/02/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################

[ -d /opt/screenkey ] && sudo rm -fr /opt/screenkey

sudo apt-get -y install python-gtk2 python-setuptools python-setuptools-git python-distutils-extra
sudo git clone https://github.com/wavexx/screenkey.git /opt/screenkey
cd /opt/screenkey
sudo ./setup.py install

###################################################################

echo ""
echo "################################################################"
echo "# screenkey installed                                          #"
echo "################################################################"
echo ""

