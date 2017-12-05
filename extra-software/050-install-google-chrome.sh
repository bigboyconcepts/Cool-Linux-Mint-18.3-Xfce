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
# Last modified date: 07/05/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################

# Downloading and installing google chrome

if [ -f /tmp/google-chrome-stable_current_amd64.deb ]; then
    rm /tmp/google-chrome-stable_current_amd64.deb
fi

echo "Downloading google chrome latest stable edition"

CHROME_FILE="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
wget $CHROME_FILE -O /tmp/google-chrome-stable_current_amd64.deb
sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb

rm /tmp/google-chrome-stable_current_amd64.deb

###################################################################

echo ""
echo "################################################################"
echo "# Google Chrome installed                                      #"
echo "################################################################"

