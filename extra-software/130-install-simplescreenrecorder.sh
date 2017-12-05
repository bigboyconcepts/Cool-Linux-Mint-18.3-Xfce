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
# Start date        : 09/02/2017
# Last modified date: 09/02/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################

sudo add-apt-repository -y ppa:maarten-baert/simplescreenrecorder
sudo apt-get update
sudo apt-get install -y simplescreenrecorder

# if you want to record 32-bit OpenGL applications on a 64-bit system:
# sudo apt-get -y install simplescreenrecorder-lib:i386

###################################################################

echo ""
echo "################################################################"
echo "# simplescreenrecorder installed                               #"
echo "################################################################"

