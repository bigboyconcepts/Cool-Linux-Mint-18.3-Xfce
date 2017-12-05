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
# Start date        : 05/12/2017
# Last modified date: 05/12/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################

# Software from 'normal' repositories

# ubuntu-restricted-addons, ubuntu-restricted-extras
# openjdk-9-jre, icedtea-plugin

sudo apt-get -y install ubuntu-restricted-addons        # Commonly used restricted packages for Ubuntu
sudo apt-get -y install ubuntu-restricted-extras        # Commonly used media codecs and fonts for Ubuntu
sudo apt-get -y install openjdk-9-jre                   # OpenJDK Java runtime, using Hotspot JIT
sudo apt-get -y install icedtea-plugin                  # Web browser plugin to execute Java applets (dependency package)

# Installation of zippers and unzippers

sudo apt-get -y install arj                             # Archiver for .arj files
sudo apt-get -y install rar                             # Archiver for .rar files
sudo apt-get -y install mpack                           # Tools for encoding/decoding MIME messages
sudo apt-get -y install p7zip-full                      # 7z and 7za file archivers with high compression ratio
sudo apt-get -y install sharutils                       # shar, unshar, uuencode, uudecode
sudo apt-get -y install unace                           # Extract, test and view .ace archives
sudo apt-get -y install unrar-free                      # Unarchiver for .rar files
sudo apt-get -y install uudeview                        # Smart multi-file multi-part decoder (command line)

# System utilities and various tools

sudo apt-get -y install bleachbit                       # System Cleaner
sudo apt-get -y install dstat                           # Versatile resource statistics tool
sudo apt-get -y install glances                         # Curses-based monitoring tool
sudo apt-get -y install gparted                         # Partition Manager
sudo apt-get -y install gnome-system-monitor            # Process viewer and system resource monitor for GNOME
sudo apt-get -y install grsync                          # GTK+ frontend for rsync
sudo apt-get -y install hardinfo                        # Displays system information
sudo apt-get -y install htop                            # Interactive processes viewer
sudo apt-get -y install hwinfo                          # Hardware identification system
sudo apt-get -y install iotop                           # Simple top-like I/O monitor
sudo apt-get -y install ipcalc                          # Parameter calculator for IPv4 addresses
sudo apt-get -y install joe                             # User friendly full screen text editor
sudo apt-get -y install focuswriter                     # Fullscreen distraction-free writing program
sudo apt-get -y install meld                            # Graphical tool to diff and merge files
sudo apt-get -y install multitail                       # View multiple logfiles windowed on console
sudo apt-get -y install partclone                       # Utility to clone and restore a partition
sudo apt-get -y install partimage                       # Backup partitions into a compressed image file
sudo apt-get -y install plank                           # Elegant, simple, clean dock
sudo apt-get -y install screenruler                     # Measure objects on screen with a variety of metrics
sudo apt-get -y install shutter                         # Feature-rich screenshot program
sudo apt-get -y install slurm                           # Realtime network interface monitor
sudo apt-get -y install stress                          # A tool to impose load on and stress test a computer system
sudo apt-get -y install stress-ng                       # Tool to load and stress a computer
sudo apt-get -y install suckless-tools                  # Simple commands for minimalistic window managers
sudo apt-get -y install scrot                           # Command line screen capture utility
sudo apt-get -y install screenfetch                     # Bash Screenshot Information Tool
sudo apt-get -y install sysv-rc-conf                    # SysV init runlevel configuration tool for the terminal
sudo apt-get -y install vnstat                          # Console-based network traffic monitor
sudo apt-get -y install xclip                           # Command line interface to X selections
sudo apt-get -y install xfonts-terminus                 # Fixed-width fonts for fast reading

# Core tools

sudo apt-get -y install extlinux                        # Collection of bootloaders (Linux ext2/ext3/ext4, btrfs, and xfs bootloader)
sudo apt-get -y install dconf-editor                    # Simple configuration storage system - graphical editor
sudo apt-get -y install fusesmb                         # Filesystem client based on the SMB file transfer protocol
sudo apt-get -y install ppa-purge                       # Disables a PPA and reverts to official packages
sudo apt-get -y install ncdu                            # ncurses disk usage viewer
sudo apt-get -y install nmap                            # The Network Mapper
sudo apt-get -y install pv                              # Shell pipeline element to meter data passing through

echo ""
echo "################################################################"
echo "# Core software installed                                      #"
echo "################################################################"
