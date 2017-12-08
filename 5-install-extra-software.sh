#!/bin/bash
set -e
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

# Atom

echo -e '\033[0m'
echo -e '\033[1;31m => Atom editor'
echo -e '\033[0m'

if ask "Do you want to install Atom ?"; then
  sh extra-software/010-install-atom.sh
fi

# #################################################################

# Birdfont

echo -e '\033[0m'
echo -e '\033[1;31m => Birdfont fonts editor'
echo -e '\033[0m'

if ask "Do you want to install Birdfont ?"; then
  sh extra-software/020-install-birdfont.sh
fi

# #################################################################

# Brackets

echo -e '\033[0m'
echo -e '\033[1;31m => Brackets html editor'
echo -e '\033[0m'

if ask "Do you want to install Brackets ?"; then
  sh extra-software/030-install-brackets.sh
fi

# #################################################################

# Conky / Conky Manager

echo -e '\033[0m'
echo -e '\033[1;31m => Conky / Conky Manager'
echo -e '\033[0m'

if ask "Do you want to install Conky and Conky Manager ?"; then
  sh extra-software/040-install-conky.sh
fi

# #################################################################

# Google Chrome Browser

echo -e '\033[0m'
echo -e '\033[1;31m => Google Chrome browser'
echo -e '\033[0m'

if ask "Do you want to install Google Chrome browser ?"; then
  sh extra-software/050-install-google-chrome.sh
fi

# #################################################################

# Opera Browser

echo -e '\033[0m'
echo -e '\033[1;31m => Opera browser'
echo -e '\033[0m'

if ask "Do you want to install Opera browser ?"; then
  sh extra-software/055-install-opera-browser.sh
fi

# #################################################################

# Gradio

echo -e '\033[0m'
echo -e '\033[1;31m => Gradio'
echo -e '\033[0m'

if ask "Do you want to install Gradio ?"; then
  sh extra-software/060-install-gradio.sh
fi

# #################################################################

# Insync

echo -e '\033[0m'
echo -e '\033[1;31m => Insync Google Drive client'
echo -e '\033[0m'

if ask "Do you want to install Insync ?"; then
  sh extra-software/070-install-insync.sh
fi

# #################################################################

# Kodi

echo -e '\033[0m'
echo -e '\033[1;31m => Kodi Media Center'
echo -e '\033[0m'

if ask "Do you want to install Kodi ?"; then
  sh extra-software/073-install-kodi.sh
fi

# #################################################################

# Overgrive

echo -e '\033[0m'
echo -e '\033[1;31m => Overgrive Google Drive client'
echo -e '\033[0m'

if ask "Do you want to install Overgrive ?"; then
  sh extra-software/075-install-overgrive.sh
fi

# #################################################################

# Neofetch

echo -e '\033[0m'
echo -e '\033[1;31m => Neofetch'
echo -e '\033[0m'

if ask "Do you want to install Neofetch ?"; then
  sh extra-software/080-install-neofetch.sh
fi

# #################################################################

# Noobslab software (slingscold, albert)

echo -e '\033[0m'
echo -e '\033[1;31m => Noobslab software (slingscold, albert)'
echo -e '\033[0m'

if ask "Do you want to install Noobslab software ?"; then
  sh extra-software/090-install-noobslab-software.sh
fi

# #################################################################

# OBS Studio

echo -e '\033[0m'
echo -e '\033[1;31m => OBS Studio'
echo -e '\033[0m'

if ask "Do you want to install OBS Studio ?"; then
  sh extra-software/100-install-obsstudio.sh
fi

# #################################################################

# ownCloud Client

echo -e '\033[0m'
echo -e '\033[1;31m => ownCloud Client'
echo -e '\033[0m'

if ask "Do you want to install ownCloud Client ?"; then
  sh extra-software/110-install-owncloud-client.sh
fi

# #################################################################

# Peek

echo -e '\033[0m'
echo -e '\033[1;31m => Peek'
echo -e '\033[0m'

if ask "Do you want to install Peek ?"; then
  sh extra-software/120-install-peek.sh
fi

# #################################################################

# Simplescreenrecorder

echo -e '\033[0m'
echo -e '\033[1;31m => Simple Screen Recorder'
echo -e '\033[0m'

if ask "Do you want to install Simple Screen Recorder ?"; then
  sh extra-software/130-install-simplescreenrecorder.sh
fi

# #################################################################

# Skippy-XD (OSX Exposè like)

echo -e '\033[0m'
echo -e '\033[1;31m => Skippy-XD (OSX Exposè like)'
echo -e '\033[0m'

if ask "Do you want to install Skippy-XD ?"; then
  sh extra-software/140-install-skippyxd.sh
fi

# #################################################################

# Spotify Client

echo -e '\033[0m'
echo -e '\033[1;31m => Spotify Client'
echo -e '\033[0m'

if ask "Do you want to install Spotify Client ?"; then
  sh extra-software/150-install-spotify.sh
fi

# #################################################################

# Sublime text 3

echo -e '\033[0m'
echo -e '\033[1;31m => Sublime text 3 editor'
echo -e '\033[0m'

if ask "Do you want to install Sublime text 3 ?"; then
  sh extra-software/160-install-sublime-text.sh
fi

# #################################################################

# Teamviewer

echo -e '\033[0m'
echo -e '\033[1;31m => Teamviewer'
echo -e '\033[0m'

if ask "Do you want to install Teamviewer 12 ?"; then
  sh extra-software/170-install-teamviewer.sh
fi

# #################################################################

# Telegram Desktop

echo -e '\033[0m'
echo -e '\033[1;31m => Telegram Desktop IM'
echo -e '\033[0m'

if ask "Do you want to install Telegram Desktop ?"; then
  sh extra-software/180-install-telegram.sh
fi

# #################################################################

# Viber Desktop

echo -e '\033[0m'
echo -e '\033[1;31m => Viber Desktop IM'
echo -e '\033[0m'

if ask "Do you want to install Viber Desktop ?"; then
  sh extra-software/185-install-viber.sh
fi

# #################################################################

# Variety

echo -e '\033[0m'
echo -e '\033[1;31m => Variety'
echo -e '\033[0m'

if ask "Do you want to install Variety ?"; then
  sh extra-software/190-install-variety.sh
fi

# #################################################################

# Vivaldi

echo -e '\033[0m'
echo -e '\033[1;31m => Vivaldi browser'
echo -e '\033[0m'

if ask "Do you want to install Vivaldi browser ?"; then
  sh extra-software/200-install-vivaldi.sh
fi

# #################################################################

# XNView (http://www.xnview.com/en/xnviewmp/)

echo -e '\033[0m'
echo -e '\033[1;31m => XNView'
echo -e '\033[0m'

if ask "Do you want to install XNView ?"; then
  sh extra-software/205-install-xnview.sh
fi

# #################################################################

# WiFi Utilities

echo -e '\033[0m'
echo -e '\033[1;31m => WiFi Utilities'
echo -e '\033[0m'

if ask "Do you want to install WiFi Utilities ?"; then
  sh extra-software/210-install-wifi-utilities.sh
fi

# #################################################################

# Xfce4 Addons

echo -e '\033[0m'
echo -e '\033[1;31m => Xfce4 Addons'
echo -e '\033[0m'

if ask "Do you want to install Xfce4 Addons ?"; then
  sh extra-software/220-install-xfce4-addons.sh
fi

# #################################################################

# Xfce4 plugins

echo -e '\033[0m'
echo -e '\033[1;31m => Xfce4 hotcorner plugin'
echo -e '\033[0m'

if ask "Do you want to install Xfce4 hotcorner plugin ?"; then
  sh extra-software/230-install-xfce4-hotcorner-plugin.sh
fi

echo -e '\033[0m'
echo -e '\033[1;31m => Xfce4 kbdleds plugin'
echo -e '\033[0m'

if ask "Do you want to install Xfce4 kbdleds plugin ?"; then
  sh extra-software/240-install-xfce4-kbdleds-plugin.sh
fi

echo -e '\033[0m'
echo -e '\033[1;31m => Xfce4 weather plugin'
echo -e '\033[0m'

if ask "Do you want to install Xfce4 weather plugin ?"; then
  source extra-software/245-install-xfce4-weather-plugin.sh
fi

# #################################################################

# Etcher SD image writer

echo -e '\033[0m'
echo -e '\033[1;31m => Etcher SD image writer'
echo -e '\033[0m'

if ask "Do you want to install Etcher ?"; then
  sh extra-software/250-install-etcher.sh
fi

# #################################################################

# Skype for Linux

echo -e '\033[0m'
echo -e '\033[1;31m => Skype for Linux'
echo -e '\033[0m'

if ask "Do you want to install Skype for Linux ?"; then
  sh extra-software/260-install-skype.sh
fi

# #################################################################

# VirtualBox

echo -e '\033[0m'
echo -e '\033[1;31m => VirtualBox'
echo -e '\033[0m'

if ask "Do you want to install VirtualBox ?"; then
  sh extra-software/270-install-virtualbox.sh
fi

# #################################################################

# VMWare Workstation Linux

echo -e '\033[0m'
echo -e '\033[1;31m => VMWare Workstation Linux'
echo -e '\033[0m'

if ask "Do you want to install VMWare Workstation ?"; then
  sh extra-software/280-install-vmware-workstation-pro.sh
fi

# #################################################################

# Komodo Edit

echo -e '\033[0m'
echo -e '\033[1;31m => Komodo Edit'
echo -e '\033[0m'

if ask "Do you want to install Komodo Edit ?"; then
  sh extra-software/290-install-komodo-edit.sh
fi

# #################################################################

# Tox IM

echo -e '\033[0m'
echo -e '\033[1;31m => Tox IM'
echo -e '\033[0m'

if ask "Do you want to install Tox IM ?"; then
  sh extra-software/300-install-tox.sh
fi

# #################################################################

# Pencil

echo -e '\033[0m'
echo -e '\033[1;31m => Pencil'
echo -e '\033[0m'

if ask "Do you want to install Pencil ?"; then
  sh extra-software/310-install-pencil.sh
fi

# #################################################################

# Xampp

echo -e '\033[0m'
echo -e '\033[1;31m => Xampp'
echo -e '\033[0m'

if ask "Do you want to install Xampp ?"; then
  sh extra-software/320-install-xampp.sh
fi

# #################################################################

# LibreOffice 5.x Latest version

echo -e '\033[0m'
echo -e '\033[1;31m => LibreOffice 5.4.x'
echo -e '\033[0m'

if ask "Do you want to install LibreOffice 5.4.x ?"; then
  sh extra-software/330-install-libreoffice-latest.sh
fi

# #################################################################

# Nautilus File Manager

echo -e '\033[0m'
echo -e '\033[1;31m => Nautilus File Manager'
echo -e '\033[0m'

if ask "Do you want to install Nautilus ?"; then
  sh extra-software/340-install-nautilus.sh
fi

# #################################################################

# Hardcoded Icon Fixer
# This program aims to be a safe, easy and standardised solution to
# the problem of hardcoded application icons in Linux.
# All it is is this one bash script - simply copy it to somewhere
# on your PC and run. Use ./fix.sh -h for help.

echo -e '\033[0m'
echo -e '\033[1;31m => Hardcoded Icon Fixer'
echo -e '\033[0m'

if ask "Do you want to run Hardcoded Icon Fixer ?"; then
  sh extra-software/999-hardcodefixer.sh
fi

# #################################################################

echo ""
echo "################################################################"
echo "# Extra software installed                                     #"
echo "################################################################"
