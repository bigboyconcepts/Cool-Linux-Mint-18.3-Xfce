#!/bin/bash
#
# #################################################################
#
# Written to be used on 64 bits computers
# Author            : TheGreatYellow67 (TgY67)
# Website           : http://github.com/thegreatyellow67
#
# Modified by       : TheGreatYellow67 (TgY67)
# Version           : v1
# Start date        : 10/05/2017
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

echo "Default XAMPP version is 7.1.11:"
echo ""
echo "https://www.apachefriends.org/xampp-files/7.1.11/xampp-linux-x64-7.1.11-0-installer.run"
echo ""

if ask "Do you want to install XAMPP default version 7.1.11 ?"; then
    XAMPP_FILE="https://www.apachefriends.org/xampp-files/7.1.11/xampp-linux-x64-7.1.11-0-installer.run"
else
    echo "If there is a newer version, please input the new download link (copy/paste from web browser)"
    read -n 1 -s -p "Program file link: " XAMPP_FILE
fi

if [ -f /tmp/xampp.run ]; then
    rm /tmp/xampp.run
fi

wget $XAMPP_FILE -O /tmp/xampp.run
cd /tmp
chmod +x xampp.run
sudo ./xampp.run

rm /tmp/xampp.run

###################################################################

echo ""
echo "################################################################"
echo "# XAMPP installed                                              #"
echo "################################################################"
