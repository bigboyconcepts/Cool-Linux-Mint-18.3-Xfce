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
# Start date        : 03/05/2017
# Last modified date: 09/06/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################

# Overgrive Google Drive Client
# https://www.thefanclub.co.za/overgrive
#
if [ -f /tmp/overgrive.deb ]; then
    rm /tmp/overgrive.deb
fi

# Dependencies

sudo apt-get -y install python2.7-dev python-pip python-setuptools

OVERGRIVE_FILE="https://www.thefanclub.co.za/sites/default/files/public/overgrive/overgrive_3.2.3_all.deb"

wget $OVERGRIVE_FILE -O /tmp/overgrive.deb
sudo dpkg -i /tmp/overgrive.deb

pip install --upgrade pip

rm /tmp/overgrive.deb

echo ""
echo "################################################################"
echo "# Overgrive installed                                          #"
echo "################################################################"

