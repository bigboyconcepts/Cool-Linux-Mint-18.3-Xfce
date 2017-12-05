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

echo "Default Komodo Edit 10 version is 11.0.1-18119:"
echo ""
echo "http://downloads.activestate.com/Komodo/releases/11.0.1/Komodo-Edit-11.0.1-18119-linux-x86_64.tar.gz"
echo ""

if ask "Do you want to install Komodo Edit 10 version 11.0.1-18119 ?"; then
    KOMODO_FILE="http://downloads.activestate.com/Komodo/releases/11.0.1/Komodo-Edit-11.0.1-18119-linux-x86_64.tar.gz"
else
    echo "If there is a newer version, please input the new download link (copy/paste from web browser)"
    read -n 1 -s -p "Program file link: " KOMODO_FILE
fi

# cleaning tmp
#
[ -f /tmp/komodo-edit.tar.gz ] && rm /tmp/komodo-edit.tar.gz

# Get Komodo Edit
#
wget $KOMODO_FILE -O /tmp/komodo-edit.tar.gz
cd /tmp
tar xzf komodo-edit.tar.gz
cd Komodo-Edit-11.0.1-18119-linux-x86_64/
sudo cp -r INSTALLDIR /opt/komodo-edit-11

LAUNCHER="$HOME/.local/share/applications/komodo-edit-11.desktop"

# Create launcher file for Komodo Edit if not exists
#
if [ ! -f $LAUNCHER ]; then
    touch $LAUNCHER
    echo "[Desktop Entry]" > $LAUNCHER
    echo "Encoding=UTF-8" >> $LAUNCHER
    echo "Name=Komodo Edit 11" >> $LAUNCHER
    echo "GenericName=Editor" >> $LAUNCHER
    echo "Comment=Free multi-platform editor that makes it easy to write quality code." >> $LAUNCHER
    echo 'Exec="/opt/komodo-edit-11/lib/mozilla/komodo" %F' >> $LAUNCHER
    echo "Icon=komodo" >> $LAUNCHER
    echo "Terminal=false" >> $LAUNCHER
    echo "Type=Application" >> $LAUNCHER
    echo "MimeType=text/plain;" >> $LAUNCHER
    echo "Categories=ActiveState;Application;Development;Editor;Utility;TextEditor;" >> $LAUNCHER
fi

chmod +x $LAUNCHER

rm /tmp/komodo-edit.tar.gz
rm -fr /tmp/Komodo-Edit-11.0.1-18119-linux-x86_64/

###################################################################

echo ""
echo "################################################################"
echo "# komodo edit installed                                        #"
echo "################################################################"
