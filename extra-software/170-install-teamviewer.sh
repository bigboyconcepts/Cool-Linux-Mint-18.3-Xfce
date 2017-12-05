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
# Start date        : 05/12/2017
# Last modified date: 05/12/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################

# Downloading and installing latest teamviewer

if [ -f /tmp/teamviewer.deb ]; then
    rm /tmp/teamviewer.deb
fi

wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb -O /tmp/teamviewer.deb
sudo dpkg -i /tmp/teamviewer.deb

# Resolve dependencies errors
sudo apt-get -f install

rm /tmp/teamviewer.deb

###################################################################

echo ""
echo "################################################################"
echo "# teamviewer installed                                         #"
echo "################################################################"

