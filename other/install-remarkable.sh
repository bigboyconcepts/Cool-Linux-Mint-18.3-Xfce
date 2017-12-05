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

# dependancy

wget https://remarkableapp.github.io/files/remarkable_1.87_all.deb -O /tmp/remarkable_1.87_all.deb
sudo apt install -y python3-bs4 python3-markdown wkhtmltopdf

sudo dpkg -i /tmp/remarkable_1.87_all.deb

rm /tmp/remarkable_1.87_all.deb

###################################################################

echo ""
echo "################################################################"
echo "# remarkable installed                                         #"
echo "################################################################"
echo ""

