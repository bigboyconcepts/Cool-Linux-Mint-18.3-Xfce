#!/bin/bash
#
# #################################################################
#
# Written to be used on 64 bits computers
# Author            : 	Erik Dubois
# Website           : 	http://www.erikdubois.be
#
# Modified by       : TheGreatYellow67 (TgY67)
# Version           : v1
# Start date        : 30/04/2017
# Last modified date: 09/06/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################
set -e

echo ""
echo "################################################################"
echo "#########        Creating folders               ################"
echo "################################################################"
echo ""

# Subdirs in $HOME dir
#
echo -e "\033[1;31m => $HOME subfolders:"
echo -e "\033[0m => .conky, .fonts, .sounds, .scripts, .themes"
echo -e "\033[0m"
sleep 2

[ -d $HOME"/.conky" ] || mkdir -p $HOME"/.conky"
[ -d $HOME"/.fonts" ] || mkdir -p $HOME"/.fonts"
[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"
[ -d $HOME"/.sounds" ] || mkdir -p $HOME"/.sounds"
[ -d $HOME"/.scripts" ] || mkdir -p $HOME"/.scripts"
[ -d $HOME"/.themes" ] || mkdir -p $HOME"/.themes"
#
echo -e "\033[1;31m => $HOME subfolders:"
echo -e "\033[0m => DATA, Desktop, Documents, Downloads, Google Drive,"
echo -e "\033[0m => Music, Pictures, Scripts, Videos, ownCloud,"
echo -e "\033[0m => ownCloud/Wallpapers"
echo -e "\033[0m"
sleep 2

[ -d $HOME"/DATA" ] || mkdir -p $HOME"/DATA"
[ -d $HOME"/Desktop" ] || mkdir -p $HOME"/Desktop"
[ -d $HOME"/Documents" ] || mkdir -p $HOME"/Documents"
[ -d $HOME"/Downloads" ] || mkdir -p $HOME"/Downloads"
[ -d $HOME"/Google Drive" ] || mkdir $HOME"/Google Drive"
[ -d $HOME"/Music" ] || mkdir -p $HOME"/Music"
[ -d $HOME"/Pictures" ] || mkdir -p $HOME"/Pictures"
[ -d $HOME"/Scripts" ] || mkdir -p $HOME"/Scripts"
[ -d $HOME"/Videos" ] || mkdir -p $HOME"/Videos"
[ -d $HOME"/ownCloud" ] || mkdir -p $HOME"/ownCloud"
[ -d $HOME"/ownCloud/Wallpapers" ] || mkdir -p $HOME"/ownCloud/Wallpapers"
#
# gimp
#
echo -e "\033[1;31m => $HOME subfolders:"
echo -e "\033[0m => .gimp-2.8, .gimp-2.8/scripts, .gimp-2.8/themes"
echo -e "\033[0m"
sleep 2

[ -d $HOME"/.gimp-2.8" ] || mkdir -p $HOME"/.gimp-2.8"
[ -d $HOME"/.gimp-2.8/scripts" ] || mkdir -p $HOME"/.gimp-2.8/scripts"
[ -d $HOME"/.gimp-2.8/themes" ] || mkdir -p $HOME"/.gimp-2.8/themes"
#
# Subdirs in $HOME/.config dir
#
echo -e "\033[1;31m => $HOME/.config subfolders:"
echo -e "\033[0m => conky, gtk-3.0, plank/dock1/launchers,"
echo -e "\033[0m => sublime-text-3, variety"
echo -e "\033[0m"
sleep 2
#
# conky
#
[ -d $HOME"/.config/conky" ] || mkdir -p $HOME"/.config/conky"
#
# gtk-3.0
#
[ -d $HOME"/.config/gtk-3.0" ] || mkdir -p $HOME"/.config/gtk-3.0"
#
# plank launchers
#
[ -d $HOME"/.config/plank/dock1/launchers" ] || mkdir -p $HOME"/.config/plank/dock1/launchers"
#
# sublime text
#
[ -d $HOME"/.config/sublime-text-3" ] || mkdir -p $HOME"/.config/sublime-text-3"
#
# variety
#
[ -d $HOME"/.config/variety" ] || mkdir -p $HOME"/.config/variety"
[ -d $HOME"/.config/variety/scripts" ] || mkdir -p $HOME"/.config/variety/scripts"
#
# Virtualbox / VMWare Shared Folders
#
VM_TYPE=`sudo dmidecode | grep -i product | head -1 | cut -d: -f2 | cut -c 2-`

if [ "$VM_TYPE" = "Virtualbox" ]; then

  if [ ! -d /media/$USER/Linux_Share ]; then
    if [ ! -d /media/$USER/ ]; then
      cd /media
      sudo mkdir $USER
      sudo chown $USER:$USER $USER/
    fi

    cd /media/$USER
    sudo mkdir Linux_Share
    sudo chown $USER:$USER Linux_Share
  fi
  #
  if [ ! -d /media/$USER/Windows_Share ]; then
    if [ ! -d /media/$USER/ ]; then
      cd /media
      sudo mkdir $USER
      sudo chown $USER:$USER $USER/
    fi

    cd /media/$USER
    sudo mkdir Windows_Share
    sudo chown $USER:$USER Windows_Share
  fi

elif [ "$VM_TYPE" = "VMware Virtual Platform" ]; then

  if [ ! -d /media/$USER/Shared-Folders ]; then
    if [ ! -d /media/$USER/ ]; then
      cd /media
      sudo mkdir $USER
      sudo chown $USER:$USER $USER/
    fi

    cd /media/$USER
    sudo mkdir Shared-Folders
    sudo chown $USER:$USER Shared-Folders
  fi

else

  echo -e '\033[1;31m You are not in a virtual machine, no folders to create.'
  echo -e '\033[0m'

fi

echo "################################################################"
echo "#########        Folders created                ################"
echo "################################################################"
