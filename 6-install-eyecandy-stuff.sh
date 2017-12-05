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
# Last modified date: 13/06/2017
#
# #################################################################

###################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###################################################################

# This is a general-purpose function to ask Yes/No questions in Bash, either
# with or without a default answer. It keeps repeating the question until it
# gets a valid answer.

ask() {
    # http://djm.me/ask
    local prompt default REPLY

    while true; do

        if [ "${2:-}" = "Y" ]; then
            prompt="Y/n"
            default=Y
        elif [ "${2:-}" = "N" ]; then
            prompt="y/N"
            default=N
        else
            prompt="y/n"
            default=
        fi

        # Ask the question (not using "read -p" as it uses stderr not stdout)
        echo -n "$1 [$prompt] "

        # Read the answer (use /dev/tty in case stdin is redirected from somewhere else)
        read REPLY </dev/tty

        # Default?
        if [ -z "$REPLY" ]; then
            REPLY=$default
        fi

        # Check if the reply is valid
        case "$REPLY" in
            Y*|y*) return 0 ;;
            N*|n*) return 1 ;;
        esac

    done
}

# #################################################################

ROOT_FOLDER="$PWD"

# #################################################################

# Conky Aureola

echo -e '\033[0m'
echo -e '\033[1;31m => Conky Aureola scripts'
echo -e '\033[0m'

if ask "Do you want to install Conky Aureola scripts ?"; then
  sh eye-candy/conky-aureola.sh
fi

# #################################################################

# Sardi-extra icons

echo -e '\033[0m'
echo -e '\033[1;31m => Sardi-extra icons'
echo -e '\033[0m'

if ask "Do you want to install Sardi-extra icons ?"; then
  sh eye-candy/icons-sardi-extra.sh
fi

# #################################################################

# Sardi icons

echo -e '\033[0m'
echo -e '\033[1;31m => Sardi icons'
echo -e '\033[0m'

if ask "Do you want to install Sardi icons ?"; then
  sh eye-candy/icons-sardi.sh
fi

# #################################################################

# SurfnR icons

echo -e '\033[0m'
echo -e '\033[1;31m => SurfnR icons'
echo -e '\033[0m'

if ask "Do you want to install SurfnR icons ?"; then
  sh eye-candy/icons-surfnR.sh
fi

# #################################################################

# Flatterd icons

echo -e '\033[0m'
echo -e '\033[1;31m => Flatterd icons'
echo -e '\033[0m'

if ask "Do you want to install Flatterd icons ?"; then
  sh eye-candy/icons-flatterd.sh
fi

# #################################################################

# Arc theme

echo -e '\033[0m'
echo -e '\033[1;31m => Arc theme'
echo -e '\033[0m'

if ask "Do you want to install Arc theme ?"; then
  sh eye-candy/gtk-arc-theme.sh
fi

# #################################################################

# Arc-flatabulous theme

echo -e '\033[0m'
echo -e '\033[1;31m => Arc-flatabulous theme'
echo -e '\033[0m'

if ask "Do you want to install Arc-flatabulous theme ?"; then
  sh eye-candy/theme-arc-flatabulous.sh
fi

# #################################################################

# Plank themes

echo -e '\033[0m'
echo -e '\033[1;31m => Plank themes'
echo -e '\033[0m'

if ask "Do you want to install Plank themes ?"; then
  sh eye-candy/plank-themes.sh
fi

# #################################################################

# Arc Colora themes

echo -e '\033[0m'
echo -e '\033[1;31m => Arc Colora themes'
echo -e '\033[0m'

if ask "Do you want to install Arc Colora themes ?"; then
  sh eye-candy/theme-arc-colora-collection-3.2.sh
fi

# #################################################################

# Mint-Y themes

echo -e '\033[0m'
echo -e '\033[1;31m => Mint-Y themes'
echo -e '\033[0m'

if ask "Do you want to install Mint-Y themes ?"; then
  sh eye-candy/theme-mint-y-colora-collection-3.2.sh
fi

# #################################################################

# Plano theme and its variants

echo -e '\033[0m'
echo -e '\033[1;31m => Plano theme and its variants'
echo -e '\033[0m'

if ask "Do you want to install Plano theme and its variants ?"; then
  sh eye-candy/theme-plano.sh
fi

# #################################################################

# Cursor themes

echo -e '\033[0m'
echo -e '\033[1;31m => Cursor themes'
echo -e '\033[0m'

if ask "Do you want to install Cursor themes ?"; then
  source eye-candy/cursor-themes.sh
fi

# #################################################################

echo ""
echo "################################################################"
echo "# eye candy stuff installed                                    #"
echo "################################################################"
