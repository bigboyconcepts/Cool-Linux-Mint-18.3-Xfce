# Cool Linux Mint 18.3 XFCE

Cool Linux Mint 18.3 XFCE is a post-install useful scripts collection for Linux Mint 18.1 taken from Erik Dubois project (https://github.com/erikdubois/Ultimate-Linux-Mint-18.1-Xfce), reorganized and expanded according to my needs, and which simplify the installation process of various applications and also restoration of various software configurations after a clean install of Linux Mint 18.1 Serena.

# How to install

Download button at top right or via git (or just download the zip and uncompress)

    sudo apt-get install git (for debian based distros)

    create a folder in your HOME one, example:

    $ mkdir $HOME/DATA

    then:

    $ cd $HOME/DATA
	$ git clone https://github.com/thegreatyellow67/Cool-Linux-Mint-18.1-Xfce

Done!

# 1 Software installation

It's possible to start the full installation of all the needed software running the main script <b>quick-install.sh</b> as above: 

    $ ./quick-install.sh

do not forget to type "./" in front of name script.

It's possible to run each single script separately, choosing selectively what you want to install:

1. Script <b>1-install-core-software.sh</b>
2. Script <b>2-install-misc-software.sh</b>
3. Script <b>3-install-graphic-software.sh</b>
4. Script <b>4-install-multimedia-software.sh</b>
5. Script <b>5-install-extra-software.sh</b> runs several scripts located in <b>extra-software</b> folder that setup the following programs:

 - atom
 - birdfont
 - brackets
 - conky
 - google-chrome browser
 - opera browser
 - gradio
 - insync
 - kodi (newest version)
 - neofetch
 - noobslab software (for more details look at script extra-software/090-install-noobslab-software.sh)
 - obsstudio
 - owncloud-client
 - peek
 - simplescreenrecorder
 - skippy-xd
 - spotify
 - sublime-text3
 - teamviewer
 - telegram desktop
 - viber desktop
 - variety
 - vivaldi browser
 - XnView
 - wifi-utilities (for more details look at script extra-software/210-install-wifi-utilities.sh)
 - xfce4-addons (for more details look at script extra-software/220-install-xfce4-addons.sh)
 - xfce4-hotcorner-plugin
 - xfce4-kbdleds-plugin
 - xfce4-weather-plugin
 - etcher
 - skype
 - Virtualbox
 - VM Ware Workstation Pro
 - Komodo Editor
 - Tox IM
 - Pencil
 - XAMPP (a completely free, easy to install Apache distribution containing MariaDB, PHP, and Perl)
 - LibreOffice 5.4.x
 - Nautilus File Manager
 - hardcodefixer (Hardcoded Icon Fixer)

<b>Note:</b> inside each script it's possible to exclude from installing (or add) one or more packages by simply adding a hashtag entry ( # ) at the beginning of the command sudo apt-get.

-------------------------------------------
6. Script <b>6-install-eyecandy-stuff.sh</b> runs several scripts located in <b>eye-candy</b> folder that setup the following graphics stuff:

 - <b>arc-flatabulous-theme</b> - https://github.com/andreisergiu98/arc-flatabulous-theme
   
   For ease of installation I use the script located in <b>eye-candy</b> folder:

   - eye-candy/arc-flatabulous-theme.sh

 - <b>conky-aureola</b> - https://github.com/erikdubois/Aureola
   (an Erik Dubois conky collection)
   
   For ease of installation I use the script located in <b>eye-candy</b> folder:

   - eye-candy/conky-aureola.sh

 - <b>gtk-arc-theme</b> - https://github.com/horst3180/arc-theme
   
   For ease of installation I use the script located in <b>eye-candy</b> folder:

   - eye-candy/gtk-arc-theme.sh

 - <b>icons-flatterd</b> - https://github.com/thegreatyellow67/Flatterd
   (my personal icon theme based on Erik Dubois Surfn theme)
   
   For ease of installation I use the script located in <b>eye-candy</b> folder:

   - eye-candy/icons-flatterd.sh

 - <b>icons-sardi</b> - http://sourceforge.net/projects/sardi/
   For ease of installation I use the script located in <b>eye-candy</b> folder:

   - eye-candy/icons-sardi.sh

 - <b>icons-sardi-extra</b> - https://github.com/erikdubois/Sardi-Extra
   (Erik Dubois icon theme Sardi Extra)
   
   For ease of installation I use the script located in <b>eye-candy</b> folder:

   - eye-candy/icons-sardi-extra.sh

 - <b>icons-SurfnR</b> - https://github.com/thegreatyellow67/SurfnR
   (Surfn RELOADED - A corrected version of Erik Dubois icon theme Surfn)
   
   For ease of installation I use the script located in <b>eye-candy</b> folder:

   - eye-candy/icons-surfnR.sh

 - <b>plank-themes</b> - https://github.com/erikdubois/Plank-Themes
   (an Erik Dubois Plank themes collection)

   For ease of installation I use the script located in <b>eye-candy</b> folder:

   - eye-candy/plank-themes.sh

 - <b>theme-arc-colora-collection-3.2</b> - https://github.com/erikdubois/Arc-Theme-Colora-Collection
   (Erik Dubois arc-colora gtk themes collection)
   
   For ease of installation I use the script located in <b>eye-candy</b> folder:

   - eye-candy/theme-arc-colora-collection-3.2.sh

 - <b>theme-mint-y-colora-collection-3.2</b> - https://github.com/erikdubois/Mint-Y-Colora-Theme-Collection
   (Erik Dubois mint-y-colora gtk themes collection)
   
   For ease of installation I use the script located in <b>eye-candy</b> folder:

   - eye-candy/theme-mint-y-colora-collection-3.2.sh

 - <b>theme-plano</b> - https://github.com/lassekongo83/plano-theme
   (lassekongo83 gtk theme)
   
   For ease of installation I use the script located in <b>eye-candy</b> folder:

   - eye-candy/theme-plano.sh

-------------------------------------------
7. Script <b>7-maintenance.sh</b> provide a post install debian packets maintenance.
-------------------------------------------
8. Script <b>8-kernel-update.sh</b> which updates Linux kernel from version 4.9.0 to 4.10.2.
-------------------------------------------
9. Script <b>9-personal-settings.sh</b> runs various scripts located in <b>personal</b> folder for restoring various personal and programs settings.
-------------------------------------------
10. Script <b>backup-personal-settings.sh</b> which provides backup for settings and various stuff stored in Cool-Linux-Mint-18.1-Xfce/personal folder.

# F  A  Q

<b>What can you do if the script does not execute?</b>

Since I sometimes forget to make the script executable, I include here what you can do to solve that.

A script can only run when it is marked as an executable.

	ls -al 

Above code will reveal if a script has an "x". X meaning executable.
Google "chmod" and "execute" and you will find more info.

For now if this happens, you should apply this code in the terminal and add the file name.

	chmod +x typeyourfilename

Then you can execute it by typing

	./typeyourfilename
