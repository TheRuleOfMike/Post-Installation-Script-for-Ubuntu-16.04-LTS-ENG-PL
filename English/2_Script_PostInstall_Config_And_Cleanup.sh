#!/bin/sh
#Add gdiplus to wine which is quite usefull while installing games bought on gog.com
winetricks gdiplus

#Cleans the system after the first script (removes downloaded install packages etc.) 
sudo apt-get autoclean
sudo apt-get clean
sudo apt-get autoremove


#Sets a couple of things in the bahaviour of the system
gsettings set org.gnome.desktop.privacy remember-recent-files false #The 'record file and application usage' option is turned off
gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ hsize 2 #
gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ vsize 2 #Turn on workspaces
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-timeout 0 #The computer won't go to sleep when pluged in.
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-timeout 600 #When on battery it will go to sleep after 10 minutes
gsettings set org.gnome.settings-daemon.plugins.power lid-close-battery-action suspend #When the Lid is closed the computer will go to sleep (pluged in)
gsettings set org.gnome.settings-daemon.plugins.power lid-close-ac-action suspend #When the Lid is closed the computer will go to sleep (battery)
gsettings set org.gnome.desktop.privacy send-software-usage-stats false #Stops sending software usage stats to Canonical
gsettings set org.gnome.desktop.screensaver lock-enabled true #Enable lock screen when idle
gsettings set org.gnome.desktop.screensaver lock-delay uint32 3600 #Lock screen after 5 minutes
gsettings set org.gnome.desktop.screensaver idle-delay uint32 0 #Never turn of screen


