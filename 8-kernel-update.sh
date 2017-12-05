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
# Last modified date: 06/05/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################

echo "Kernel Versions:"
echo ""
echo "[ A ] 4.9-0   [ B ] 4.9-1"
echo "[ C ] 4.9-2   [ D ] 4.9-3"
echo "[ E ] 4.9-4   [ F ] 4.9-5"
echo "[ G ] 4.9-6   [ H ] 4.9-7"
echo "[ I ] 4.9-8   [ L ] 4.9-9"
echo "[ M ] 4.9-10  [ N ] 4.9-11"
echo "[ O ] 4.9-12  [ P ] 4.9.13"
echo "[ Q ] 4.9.14  [ R ] 4.10.0"
echo "[ S ] 4.10.1  [ T ] 4.10.2"
echo ""

while true; do
    read -p "Which version do you want to install? (A/B/C/D/E/F/G/H/I/L/M/N/O/P/Q) : " INPUT
    case $INPUT in
        [Aa]* ) sh kernels/update-to-the-last-stable-4.9-0-v1.sh; break;;
        [Bb]* ) sh kernels/update-to-the-last-stable-4.9-1-v1.sh;break;;
        [Cc]* ) sh kernels/update-to-the-last-stable-4.9-2-v1.sh;break;;
        [Dd]* ) sh kernels/update-to-the-last-stable-4.9-3-v1.sh;break;;
        [Ee]* ) sh kernels/update-to-the-last-stable-4.9-4-v1.sh;break;;
        [Ff]* ) sh kernels/update-to-the-last-stable-4.9-5-v1.sh;break;;
        [Gg]* ) sh kernels/update-to-the-last-stable-4.9-6-v1.sh;break;;
        [Hh]* ) sh kernels/update-to-the-last-stable-4.9-7-v1.sh;break;;
        [Ii]* ) sh kernels/update-to-the-last-stable-4.9-8-v1.sh;break;;
        [Ll]* ) sh kernels/update-to-the-last-stable-4.9-9-v1.sh;break;;
        [Mm]* ) sh kernels/update-to-the-last-stable-4.9-10-v1.sh; break;;
        [Nn]* ) sh kernels/update-to-the-last-stable-4.9-11-v1.sh; break;;
        [Oo]* ) sh kernels/update-to-the-last-stable-4.9-12-v1.sh; break;;
        [Pp]* ) sh kernels/update-to-the-last-stable-4.9-13-v1.sh; break;;
        [Qq]* ) sh kernels/update-to-the-last-stable-4.9-14-v1.sh; break;;
        [Rr]* ) sh kernels/update-to-the-last-stable-4.10-0-v1.sh; break;;
        [Ss]* ) sh kernels/update-to-the-last-stable-4.10-1-v1.sh; break;;
        [Tt]* ) sh kernels/update-to-the-last-stable-4.10-2-v1.sh; break;;
        * ) echo "Please select the right letter [A/B/C/D/E/F/G/H/I/L/M/N/O/P/Q]";;
    esac
done
