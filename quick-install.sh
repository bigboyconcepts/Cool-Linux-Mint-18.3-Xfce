#!/bin/bash
#
# #################################################################
#
# Post install Script for Cool Linux Mint 18.1 Serena XFCE
# Written to be used on 64 bits computers
#
# Original Author   : Erik Dubois
# Website           : http://www.erikdubois.be
#
# Modified by       : TheGreatYellow (TgY67)
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

# FUNCTION STARTUP ################################################
#
function startup {
    clear
    echo "##########################################################"
    echo "#                                                        #"
    echo "#  Post install Script for Linux Mint 18.1 Serena XFCE   #"
    echo "#                                                        #"
    echo "#  [ STARTUP ]                                           #"
    echo "#                                                        #"
    echo "##########################################################"
    echo ""
    read -p "Do you want to continue? (Y)es, (N)o : " INPUT
    case $INPUT in
        [Yy]* ) setup;;
        [Nn]* ) clear; exit 99;;
        * ) startup;;
    esac
}

# FUNCTION SETUP ##################################################
#
function setup {
    clear
    echo "##########################################################"
    echo "#                                                        #"
    echo "#  Post install Script for Linux Mint 18.1 Serena XFCE   #"
    echo "#                                                        #"
    echo "#  [ RUNNING SETUP... ]                                  #"
    echo "#                                                        #"
    echo "##########################################################"
    echo ""
    read -n 1 -s -p "Update system... Press a key to continue "
    echo ""
 
    sudo apt update -y
    sudo apt upgrade -y

    echo ""
    read -n 1 -s -p "Step [ 1 ] : Install Core Software... Press a key to continue "
    echo ""

    sh 1-install-core-software.sh

    echo ""
    read -n 1 -s -p "Step [ 2 ] : Install Misc Software... Press a key to continue "
    echo ""

    sh 2-install-misc-software.sh

    echo ""
    read -n 1 -s -p "Step [ 3 ] : Install Graphic Software and various fonts... Press a key to continue "
    echo ""

    sh 3-install-graphic-software.sh

    echo ""
    read -n 1 -s -p "Step [ 4 ] : Install Multimedia Software... Press a key to continue "
    echo ""

    sh 4-install-multimedia-software.sh

    echo ""
    read -n 1 -s -p "Step [ 5 ] : Install Extra Stuff... Press a key to continue "
    echo ""

    sh 5-install-extra-software.sh

    echo ""
    read -n 1 -s -p "Step [ 6 ] : Install Eye Candy Stuff... Press a key to continue "
    echo ""

    sh 6-install-eyecandy-stuff.sh

    echo ""
    read -n 1 -s -p "Step [ 7 ] : Starting full maintenance... Press a key to continue "
    echo ""

    sh 7-maintenance.sh

    echo ""
    read -n 1 -s -p "Step [ 8 ] : Update kernel version... Press a key to continue "
    echo ""
    echo ""

    sh 8-kernel-update.sh

    echo ""
    read -n 1 -s -p "Step [ 9 ] : Personal settings... Press a key to continue "
    echo ""
    echo ""

    sh 9-personal-settings.sh

    echo ""
    echo "################################################################"
    echo "# All done, exit script                                        #"
    echo "################################################################"

}

startup
