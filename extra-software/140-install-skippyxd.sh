#!/bin/bash
#
# #################################################################
#
# Written to be used on 64 bits computers
# Author            : TheGreatYellow67 (TgY67)
# Website           : https://github.com/thegreatyellow67
#
# Version           : v1
# Start date        : 09/02/2017
# Last modified date: 07/05/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################

# Skippy-XD (OSX Exposè like)

sudo add-apt-repository -y ppa:landronimirc/skippy-xd-daily
sudo apt-get update
sudo apt-get -y install skippy-xd
mkdir -p ~/.config/skippy-xd
wget https://raw.githubusercontent.com/richardgv/skippy-xd/master/skippy-xd.sample.rc -O ~/.config/skippy-xd/skippy-xd.rc
sudo apt-get install -y xdotool
wget https://raw.github.com/hotice/webupd8/master/skippy-xd-fix -O /tmp/skippy-xd-fix
sudo install /tmp/skippy-xd-fix /usr/local/bin/

if [ -f ~/Desktop/Skippy-Post-Install.txt ]; then
    rm ~/Desktop/Skippy-Post-Install.txt
fi

echo " Skippy-XD Post Install Instructions" >> ~/Desktop/Skippy-Post-Install.txt
echo "" >> ~/Desktop/Skippy-Post-Install.txt
echo " After installation, we will automatically activate Skippy-XD" >> ~/Desktop/Skippy-Post-Install.txt
echo " at each start, for Xfce just go to:" >> ~/Desktop/Skippy-Post-Install.txt
echo " Settings -> Session and Startup > Application Autostart" >> ~/Desktop/Skippy-Post-Install.txt
echo " click Add and insert:" >> ~/Desktop/Skippy-Post-Install.txt
echo "" >> ~/Desktop/Skippy-Post-Install.txt
echo " skippy-xd --start-daemon" >> ~/Desktop/Skippy-Post-Install.txt
echo "" >> ~/Desktop/Skippy-Post-Install.txt
echo " At this point we will have to set the keyboard shortcut that allows us to" >> ~/Desktop/Skippy-Post-Install.txt
echo " start Skippy-XD, for Xfce just go to:" >> ~/Desktop/Skippy-Post-Install.txt
echo " Settings -> Keyboards > Applications Shortcuts" >> ~/Desktop/Skippy-Post-Install.txt
echo " click Add and insert:" >> ~/Desktop/Skippy-Post-Install.txt
echo "" >> ~/Desktop/Skippy-Post-Install.txt
echo " skippy-xd-fix" >> ~/Desktop/Skippy-Post-Install.txt
echo "Read skippy post install instructions on your Desktop (Skippy-Post-Install.txt)"
echo ""
read -n1 -s -p "Press a key for continue "
echo ""

###################################################################

echo ""
echo "################################################################"
echo "# skippy-xd installed                                          #"
echo "################################################################"

