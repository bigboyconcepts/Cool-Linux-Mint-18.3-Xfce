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

function add_to_settings_manager_personal () {

APPNAME=$1
APPNAME="$APPNAME.desktop"

LOCATION_ROOT="/usr/share/applications/$APPNAME"
LOCATION_HOME="$HOME/.local/share/applications/"

if [ -f "$LOCATION_ROOT" ];then
  cp $LOCATION_ROOT $LOCATION_HOME
  echo "Categories=Settings;X-XFCE-SettingsDialog;X-XFCE-PersonalSettings" >> $LOCATION_HOME/$APPNAME
fi

}

function add_to_settings_manager_hardware () {

APPNAME=$1
APPNAME="$APPNAME.desktop"

LOCATION_ROOT="/usr/share/applications/$APPNAME"
LOCATION_HOME="$HOME/.local/share/applications/"

if [ -f "$LOCATION_ROOT" ];then
  cp $LOCATION_ROOT $LOCATION_HOME
  echo "Categories=Settings;X-XFCE-SettingsDialog;X-XFCE-HardwareSettings" >> $LOCATION_HOME/$APPNAME
fi

}

function add_to_settings_manager_system () {

APPNAME=$1
APPNAME="$APPNAME.desktop"

LOCATION_ROOT="/usr/share/applications/$APPNAME"
LOCATION_HOME="$HOME/.local/share/applications/"

if [ -f "$LOCATION_ROOT" ];then
  cp $LOCATION_ROOT $LOCATION_HOME
  echo "Categories=Settings;X-XFCE-SettingsDialog;X-XFCE-SystemSettings" >> $LOCATION_HOME/$APPNAME
fi

}

function add_to_settings_manager_other () {

APPNAME=$1
APPNAME="$APPNAME.desktop"

LOCATION_ROOT="/usr/share/applications/$APPNAME"
LOCATION_HOME="$HOME/.local/share/applications/"

if [ -f "$LOCATION_ROOT" ];then
  cp $LOCATION_ROOT $LOCATION_HOME
  echo "Categories=Settings;X-XFCE-SettingsDialog;" >> $LOCATION_HOME/$APPNAME
fi

}

function add_to_settings_manager_visible () {

APPNAME=$1
APPNAME="$APPNAME.desktop"

OLD="NoDisplay=true"

LOCATION_ROOT="/usr/share/applications/$APPNAME"
LOCATION_HOME="$HOME/.local/share/applications/$APPNAME"

if [ -f "$LOCATION_ROOT" ];then
  NEW="NoDisplay=false"
  sudo sed -i /' '/!s/$OLD/$NEW/g $LOCATION_ROOT
fi

if [ -f "$LOCATION_HOME" ];then
  NEW="NoDisplay=false"
  sed -i /' '/!s/$OLD/$NEW/g $LOCATION_HOME
fi

}

echo ""
echo -e '\033[1;31m => Adding applications to Xfce4 Settings Manager...'
echo -e '\033[0m'
sleep 2

# ######################################################
#
# PERSONAL Group
#
# ######################################################
#

add_to_settings_manager_personal mugshot
add_to_settings_manager_personal menulibre
add_to_settings_manager_personal xfpanel-switch
add_to_settings_manager_personal xfce-xfcalendar-settings
add_to_settings_manager_personal dbx_preference

# ######################################################
#
# HARDWARE Group
#
# ######################################################
#

add_to_settings_manager_hardware org.gnome.DiskUtility
add_to_settings_manager_hardware system-config-printer

# ######################################################
#
# SYSTEM Group
#
# ######################################################
#

add_to_settings_manager_system network
add_to_settings_manager_system shares
add_to_settings_manager_system time
add_to_settings_manager_system users
add_to_settings_manager_system gparted
add_to_settings_manager_system itweb-settings
add_to_settings_manager_system openjdk-8-policytool
add_to_settings_manager_system services
add_to_settings_manager_system synaptic

# ######################################################
#
# OTHER Group
#
# ######################################################
#

add_to_settings_manager_other qtconfig-qt4

echo "################################################################"
echo "#########  Applications added to Xfce4 Settings Manager  #######"
echo "################################################################"

