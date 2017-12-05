#!/bin/bash
#
# #################################################################
#
# Written to be used on 64 bits computers
# Author            : Erik Dubois
# Website           : http://www.erikdubois.be
#
# Modified by       : TheGreatYellow67 (TgY67)
# Version           : v2
# Start date        : 09/02/2017
# Last modified date: 10/10/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################

sudo sh -c "echo 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/desktop/Ubuntu_16.04/ /' > /etc/apt/sources.list.d/owncloud-client.list"
wget -nv http://download.opensuse.org/repositories/isv:/ownCloud:/desktop/Ubuntu_16.04/Release.key -O /tmp/Release.key
sudo apt-key add - < /tmp/Release.key
sudo apt-get update
sudo apt-get -y install owncloud-client
rm /tmp/Release.key

###################################################################

echo ""
echo "################################################################"
echo "# ownCloud Client installed                                    #"
echo "################################################################"

