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
# Last modified date: 30/04/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################
set -e

echo "stop firefox from saying well this is embarrasing -- stop restore of websites"
echo ""
echo "about:config"
echo ""
echo "browser.sessionstore.resume_from_crash  from true to false"
echo "browser.sessionstore.max_resumed_crashes from 0 to 1"
