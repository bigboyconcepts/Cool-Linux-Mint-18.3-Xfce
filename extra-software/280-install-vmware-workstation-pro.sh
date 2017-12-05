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
# Last modified date: 05/12/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################

VMWARE_FILE="http://download3.vmware.com/software/wkst/file/VMware-Workstation-Full-14.0.0-6661328.x86_64.bundle"

# cleaning tmp
[ -f /tmp/vmware-workstation.bundle ] && rm /tmp/vmware-workstation.bundle

# Get VMware-Workstation-Full
#
wget $VMWARE_FILE -O /tmp/vmware-workstation.bundle

chmod +x /tmp/vmware-workstation.bundle

sudo /tmp/vmware-workstation.bundle

rm /tmp/vmware-workstation.bundle

echo "start Vmware Workstation Pro"

###################################################################

echo ""
echo "################################################################"
echo "# vmware-workstation installed                                 #"
echo "################################################################"

