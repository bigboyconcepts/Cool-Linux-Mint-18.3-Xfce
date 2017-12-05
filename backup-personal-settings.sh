#!/bin/bash
#
# #################################################################
#
# Personal Settings Backup Script for
# Cool Linux Mint 18.1 Serena XFCE
#
# Written to be used on 64 bits computers
#
# Original Author   : TheGreatYellow67 (TgY67)
# Website           : https://github.com/thegreatyellow67
#
# Version           : v1
# Start date        : 01/05/2017
# Last modified date: 05/12/2017
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
echo "##                                                            ##"
echo "## Personal Settings Backup Script for                        ##"
echo "## Cool Linux Mint 18.3 Silvia XFCE                           ##"
echo "##                                                            ##"
echo "################################################################"
echo ""

COOL_LINUX_MINT_PATH="$HOME/DATA/Cool-Linux-Mint-18.3-Xfce"

# Bash settings and aliases
#
echo "Bash settings and aliases..."
echo ""
cp $HOME/.bashrc $COOL_LINUX_MINT_PATH/personal/settings/bash/bashrc
cp $HOME/.bash-aliases $COOL_LINUX_MINT_PATH/personal/settings/bash/bash-aliases
sleep 2

# Thunar Bookmarks
#
echo "Thunar Bookmarks..."
echo ""
cp $HOME/.config/gtk-3.0/bookmarks $COOL_LINUX_MINT_PATH/personal/settings/bookmarks/
sleep 2

# GTK 2.0 customizations
#
echo "GTK 2.0 customizations..."
echo ""
cp $HOME/.gtkrc-2.0 $COOL_LINUX_MINT_PATH/personal/settings/gtkrc-2.0/gtkrc-2.0
cp $HOME/trans.png $COOL_LINUX_MINT_PATH/personal/settings/gtkrc-2.0/
sleep 2

# hosts file
# (my hosts file encrypted with openssl for security reasons;
# instead of it use your own /etc/hosts file)
#
echo "Encrypting hosts file..."
echo ""
openssl aes-256-cbc -in /etc/hosts -out $COOL_LINUX_MINT_PATH/personal/settings/hosts/hosts.enc
echo ""
sleep 2

# Keyboard shortcuts
#
echo "Keyboard shortcuts..."
echo ""
cp $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml $COOL_LINUX_MINT_PATH/personal/settings/keyboard-shortcuts/
sleep 2

# Gimp settings
#
CURRENT=$(date '+%Y-%m-%d')

echo "Gimp settings..."
echo ""
cd $HOME
tar czf gimp-2.8-$CURRENT.tar.gz .gimp-2.8/
mv gimp-2.8-$CURRENT.tar.gz $COOL_LINUX_MINT_PATH/personal/settings/gimp/
sleep 2

# Inkscape settings
#
echo "Inkscape settings..."
echo ""
cd $HOME/.config/
tar czf inkscape.tar.gz inkscape/
mv inkscape.tar.gz $COOL_LINUX_MINT_PATH/personal/settings/inkscape/
sleep 2

# Sublime Text 3 settings
#
echo "Sublime Text 3 settings..."
echo ""
cd $HOME/.config/
tar czf sublime-text-3.tar.gz sublime-text-3/
mv sublime-text-3.tar.gz $COOL_LINUX_MINT_PATH/personal/settings/sublime-text-3/
sleep 2

# Variety settings
#
echo "Variety settings..."
echo ""
cp $HOME/.config/variety/variety.conf $COOL_LINUX_MINT_PATH/personal/settings/variety/
sleep 2

# User fonts
#
echo "User fonts..."
echo ""
cd $HOME/
tar czf fonts.tar.gz .fonts/
mv fonts.tar.gz $COOL_LINUX_MINT_PATH/personal/stuff/fonts/
sleep 2

# Scripts for xfce4
#
echo "Scripts for xfce4..."
echo ""
cd $HOME/
tar czf scripts.tar.gz .scripts/
mv scripts.tar.gz $COOL_LINUX_MINT_PATH/personal/stuff/scripts/
sleep 2

# Personal Sounds
echo "Personal sounds..."
echo ""
cd $HOME/
tar czf sounds.tar.gz .sounds/
mv sounds.tar.gz $COOL_LINUX_MINT_PATH/personal/stuff/sounds/ 
sleep 2

# Xfce4 terminal settings
#
echo "Xfce4 terminal settings..."
echo ""
cp $HOME/.config/xfce4/terminal/terminalrc $COOL_LINUX_MINT_PATH/personal/settings/terminal/
sleep 2

# Xfce4 appfinder bookmarks
#
echo "Xfce4 appfinder bookmarks..."
echo ""
cp $HOME/.config/xfce4/appfinder/bookmarks $COOL_LINUX_MINT_PATH/personal/settings/appfinder/
sleep 2

# Xfce4 panel settings
#
echo "Xfce4 panel settings..."
echo ""
cd $HOME/.config/xfce4
tar czf panel.tar.gz panel/
tar czf xfconf.tar.gz xfconf/
mv panel.tar.gz xfconf.tar.gz $COOL_LINUX_MINT_PATH/personal/settings/xfce4/
sleep 2

# User applications links
#
echo "User applications links..."
echo ""
cd $HOME/.local/share/
tar czf user-applications.tar.gz applications/
mv user-applications.tar.gz $COOL_LINUX_MINT_PATH/personal/stuff/applications/
sleep 2

# Thunar custom actions
#
echo "Thunar custom actions..."
echo ""
cp $HOME/.config/Thunar/uca.xml $COOL_LINUX_MINT_PATH/personal/settings/thunar-custom-actions/
sleep 2

# Compton settings
#
# echo "Compton settings..."
# echo ""
# cp $HOME/.config/compton.conf $COOL_LINUX_MINT_PATH/personal/settings/compton/compton.conf

echo "################################################################"
echo "## Backup completed                                           ##"
echo "################################################################"
