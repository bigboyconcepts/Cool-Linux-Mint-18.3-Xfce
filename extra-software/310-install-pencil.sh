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
# Last modified date: 19/08/2017
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

echo "Default Pencil version is 3.0.4:"
echo ""
echo "http://pencil.evolus.vn/dl/V3.0.4/Pencil_3.0.4_amd64.deb"
echo ""

if ask "Do you want to install Pencil default version 3.0.4 ?"; then
    PENCIL_FILE="http://pencil.evolus.vn/dl/V3.0.4/Pencil_3.0.4_amd64.deb"
else
    echo "If there is a newer version, please input the new download link (copy/paste from web browser)"
    read -n 1 -s -p "Program file link: " PENCIL_FILE
fi

if [ -f /tmp/pencil-amd64.deb ]; then
    rm /tmp/pencil-amd64.deb
fi

wget $PENCIL_FILE -O /tmp/pencil-amd64.deb
sudo dpkg -i /tmp/pencil-amd64.deb

rm /tmp/pencil-amd64.deb

###################################################################

echo ""
echo "################################################################"
echo "# pencil installed                                             #"
echo "################################################################"
