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
# Last modified date: 21/11/2017
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

echo "Default Vivaldi browser version is 1.12.955.48-1:"
echo ""
echo "https://downloads.vivaldi.com/stable/vivaldi-stable_1.12.955.48-1_amd64.deb"
echo ""

if ask "Do you want to install Vivaldi browser version 1.12.955.48-1 ?"; then
    VIVALDI_FILE="https://downloads.vivaldi.com/stable/vivaldi-stable_1.12.955.48-1_amd64.deb"
else
    echo "If there is a newer version, please input the new download link (copy/paste from web browser)"
    read -n 1 -s -p "Program file link: " VIVALDI_FILE
fi

if [ -f /tmp/vivaldi-stable.deb ]; then
    rm /tmp/vivaldi-stable.deb
fi

sudo apt install -y libcurl3
sudo apt-get -f install
wget $VIVALDI_FILE -O /tmp/vivaldi-stable.deb
sudo dpkg -i /tmp/vivaldi-stable.deb

rm /tmp/vivaldi-stable.deb

###################################################################

echo ""
echo "################################################################"
echo "# vivaldi installed                                            #"
echo "################################################################"

