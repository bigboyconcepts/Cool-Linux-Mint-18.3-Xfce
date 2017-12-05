#!/bin/bash
#
# #################################################################
#
# Written to be used on 64 bits computers
# Author            : TheGreatYellow67 (TgY67)
# Website           : https://github.com/thegreatyellow67
#
# Version           : v1
# Start date        : 12/05/2017
# Last modified date: 09/06/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################
set -e

function remove_from_settings_manager_personal () {

APPNAME=$1
APPNAME="$APPNAME.desktop"

LOCATION_HOME="$HOME/.local/share/applications/$APPNAME"

if [ -f "$LOCATION_HOME" ];then
  rm $LOCATION_HOME
fi

}

function remove_from_settings_manager_hardware () {

APPNAME=$1
APPNAME="$APPNAME.desktop"

LOCATION_HOME="$HOME/.local/share/applications/$APPNAME"

if [ -f "$LOCATION_HOME" ];then
  rm $LOCATION_HOME
fi

}

function remove_from_settings_manager_system () {

APPNAME=$1
APPNAME="$APPNAME.desktop"

LOCATION_HOME="$HOME/.local/share/applications/$APPNAME"

if [ -f "$LOCATION_HOME" ];then
  rm $LOCATION_HOME
fi

}

function remove_from_settings_manager_other () {

APPNAME=$1
APPNAME="$APPNAME.desktop"

LOCATION_HOME="$HOME/.local/share/applications/$APPNAME"

if [ -f "$LOCATION_HOME" ];then
  rm $LOCATION_HOME
fi

}

echo ""
echo -e '\033[1;31m => Removing applications from Xfce4 Settings Manager...'
echo -e '\033[0m'
sleep 2

# ######################################################
#
# PERSONAL Group
#
# ######################################################
#

remove_from_settings_manager_personal mugshot
remove_from_settings_manager_personal menulibre
remove_from_settings_manager_personal xfpanel-switch
remove_from_settings_manager_personal xfce-xfcalendar-settings

# ######################################################
#
# HARDWARE Group
#
# ######################################################
#

remove_from_settings_manager_hardware org.gnome.DiskUtility
remove_from_settings_manager_hardware system-config-printer

# ######################################################
#
# SYSTEM Group
#
# ######################################################
#

remove_from_settings_manager_system network
remove_from_settings_manager_system shares
remove_from_settings_manager_system time
remove_from_settings_manager_system users
remove_from_settings_manager_system gparted
remove_from_settings_manager_system itweb-settings
remove_from_settings_manager_system openjdk-8-policytool
remove_from_settings_manager_system services
remove_from_settings_manager_system synaptic

# ######################################################
#
# OTHER Group
#
# ######################################################
#

remove_from_settings_manager_other qtconfig-qt4

echo "################################################################"
echo "####   Applications removed from Xfce4 Settings Manager   ######"
echo "################################################################"

