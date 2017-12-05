#!/bin/bash
#
# #################################################################
#
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
#
# Modified by       : TheGreatYellow67 (TgY67)
# Version           : v1
# Start date        : 26/04/2017
# Last modified date: 26/04/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################

# cleaning tmp
[ -d /tmp/Flatterd ] && rm -rf /tmp/Flatterd

# if there is no hidden folder then make one
[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"

###################################################################
#  D I S T R O
###################################################################

echo "################################################################"
echo "Checking presence of lsb-release and install it when missing"

	if ! location="$(type -p "lsb_release")" || [ -z "lsb_release" ]; then

		# check if apt-git is installed
		if which apt-get > /dev/null; then

			sudo apt-get install -y lsb-release

		fi

		# check if pacman is installed
		if which pacman > /dev/null; then

			sudo pacman -S --noconfirm lsb-release

		fi

		# check if eopkg is installed
		if which eopkg > /dev/null; then

			sudo eopkg install -y lsb-release

		fi

	fi

DISTRO=$(lsb_release -si)

echo "################################################################"
echo "You are working on " $DISTRO
echo "################################################################"

###################################################################
#  D E P E N D A N C I E S
###################################################################

case $DISTRO in 

	LinuxMint|linuxmint|Ubuntu|ubuntu)

		# git

		# check if conky is installed
		if ! location="$(type -p "git")" || [ -z "git" ]; then

			echo "################################################################"
			echo "installing git for this script to work"
			echo "################################################################"

		  	sudo apt-get install -y git

		  else
		  	echo "Git was installed. Proceeding..."
		fi

		;;

	Arch)

		echo "Installing software for your Arch machine"

		# git

		if ! location="$(type -p "git")" || [ -z "git" ]; then

			echo "################################################################"
			echo "installing git for this script to work"
			echo "#################################################################"

		  	sudo pacman -S --noconfirm git

		  else
		  	echo "################################################################"
		  	echo "git was installed. Proceeding..."

		fi

		;;

	Solus)
	
	# git

		if ! location="$(type -p "git")" || [ -z "git" ]; then

			echo "################################################################"
			echo "installing git for this script to work"
			echo "################################################################"

		  	sudo eopkg install -y git

		  else
		  	echo "git was installed. Proceeding..."
		fi

		;;

	*)
		echo "No installation lines for your system."

		;;
esac

git clone https://github.com/thegreatyellow67/Flatterd /tmp/Flatterd
find /tmp/Flatterd -maxdepth 1 -type f -exec rm -rf '{}' \;
cp -rf /tmp/Flatterd/* ~/.icons/

# cleaning tmp
[ -d /tmp/Flatterd ] && rm -rf /tmp/Flatterd

###################################################################

echo "fixing hardcoded icon xfce4-appfinder"
old="Icon=edit-find"
new="Icon=xfce4-appfinder"
location="/usr/share/applications/xfce4-appfinder.desktop"
sudo sed -i s/$old/$new/g $location

echo ""
echo "################################################################"
echo "# icons flatterd installed                                     #"
echo "################################################################"
echo ""

