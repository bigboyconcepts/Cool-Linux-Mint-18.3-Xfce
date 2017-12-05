#!/bin/bash
set -e
#
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. AT YOUR OWN RISK.
#
##################################################################################################################


# latest kernel check the following url
# http://kernel.ubuntu.com/~kernel-ppa/mainline/
#
#
# cleaning tmp
[ -d /tmp/kernelupdate ] && rm -rf /tmp/kernelupdate

mkdir /tmp/kernelupdate

wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.10.1/linux-headers-4.10.1-041001_4.10.1-041001.201702260735_all.deb -P /tmp/kernelupdate/
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.10.1/linux-headers-4.10.1-041001-generic_4.10.1-041001.201702260735_amd64.deb -P /tmp/kernelupdate/
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.10.1/linux-image-4.10.1-041001-generic_4.10.1-041001.201702260735_amd64.deb -P /tmp/kernelupdate/

cd /tmp/kernelupdate
sudo dpkg -i linux*

rm -rf /tmp/kernelupdate

echo "################################################################"
echo "###############      Kernel is installed            ############"
echo "###############     Files have been deleted         ############"
echo "##########    Reboot and keep your fingers crossed  ############"
echo "################################################################"







