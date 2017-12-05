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

echo "################################################################"
echo "Checking if git is installed"
echo "Install git for an easy installation"

	# G I T

	# check if git is installed
	if which git > /dev/null; then
		echo "git was installed. Proceding..."

		else

		echo "################################################################"
		echo "installing git for this script to work"
		echo "################################################################"

	  	sudo apt-get install git -y

	fi

# if there is already a folder in tmp, delete or else do nothing
[ -d /tmp/mint-y-theme ] && rm -rf "/tmp/mint-y-theme" || echo ""
# download the github in folder /tmp/mint-y-theme

git clone https://github.com/linuxmint/mint-y-theme.git /tmp/mint-y-theme

sudo apt-get install ruby-sass
cd /tmp/mint-y-theme/src
/tmp/mint-y-theme/src/build-themes.py

sudo cp -r /tmp/mint-y-theme/usr/share/themes/* /usr/share/themes/
rm -rf /tmp/mint-y-theme

###################################################################

echo ""
echo "################################################################"
echo "# mint-y-theme installed                                       #"
echo "################################################################"
echo ""

