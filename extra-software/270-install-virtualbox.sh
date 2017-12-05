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
# Last modified date: 05/12/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################

# This is a general-purpose function to ask Yes/No questions in Bash, either
# with or without a default answer. It keeps repeating the question until it
# gets a valid answer.

ask() {
    # http://djm.me/ask
    local prompt default REPLY

    while true; do

        if [ "${2:-}" = "Y" ]; then
            prompt="Y/n"
            default=Y
        elif [ "${2:-}" = "N" ]; then
            prompt="y/N"
            default=N
        else
            prompt="y/n"
            default=
        fi

        # Ask the question (not using "read -p" as it uses stderr not stdout)
        echo -n "$1 [$prompt] "

        # Read the answer (use /dev/tty in case stdin is redirected from somewhere else)
        read REPLY </dev/tty

        # Default?
        if [ -z "$REPLY" ]; then
            REPLY=$default
        fi

        # Check if the reply is valid
        case "$REPLY" in
            Y*|y*) return 0 ;;
            N*|n*) return 1 ;;
        esac

    done
}

# #################################################################

# CHANGE THIS!
#
VBOX_VER="5.2.2"
VBOX_FILE="http://download.virtualbox.org/virtualbox/5.2.2/virtualbox-5.2_5.2.2-119230~Ubuntu~xenial_amd64.deb"
VBOX_EXTPACK="http://download.virtualbox.org/virtualbox/5.2.2/Oracle_VM_VirtualBox_Extension_Pack-5.2.2-119230.vbox-extpack"
VBOX_EXTPACK_FILENAME="Oracle_VM_VirtualBox_Extension_Pack-5.2.2-119230.vbox-extpack"

echo "Default Virtualbox version is $VBOX_VER:"
echo ""
echo "Program file:"
echo $VBOX_FILE
echo ""
echo "Extension Pack:"
echo $VBOX_EXTPACK
echo ""

if ask "Do you want to install Virtualbox default version $VBOX_VER ?"; then
    VIRTUALBOX_FILE=$VBOX_FILE
    VIRTUALBOX_EXTPACK=$VBOX_EXTPACK
    VIRTUALBOX_EXTPACK_FILENAME=$VBOX_EXTPACK_FILENAME
else
    echo "If there is a newer version, please input the new download links (copy/paste from web browser)"
    read -n 1 -s -p "Program file link: " VIRTUALBOX_FILE
    read -n 1 -s -p "Extension Pack link: " VIRTUALBOX_EXTPACK
    read -n 1 -s -p "Extension Pack file name: " VIRTUALBOX_EXTPACK_FILENAME
fi

# cleaning tmp
[ -f /tmp/virtualbox.deb ] && rm /tmp/virtualbox.deb

wget $VIRTUALBOX_FILE -O /tmp/virtualbox.deb
wget $VIRTUALBOX_EXTPACK -O $HOME/Downloads/$VIRTUALBOX_EXTPACK_FILENAME

sudo dpkg -i /tmp/virtualbox.deb

rm /tmp/virtualbox.deb

###################################################################

echo ""
echo "################################################################"
echo "# virtualbox installed                                         #"
echo "#                                                              #"
echo "# Remember to install VirtualBox Extension Pack located in     #"
echo "#                                                              #"
echo "# ~/Downloads, double clicking on file.                        #"
echo "#                                                              #"
echo "################################################################"

