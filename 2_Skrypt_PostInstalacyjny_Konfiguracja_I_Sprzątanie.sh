#!/bin/sh
#Dodaje do Wine pakiet gduplus, który jest dość przydatny przy instalacji gier z GOG.com
winetricks gdiplus

#Czyści system po działaniu pierwszego skryptu (usuwa pozostałe po instalacji pobrane pakiety i tak dalej)
sudo apt-get autoclean
sudo apt-get clean
sudo apt-get autoremove


#Ustawia parę rzeczy jeśli chodzi o zachowanie systemu.
gsettings set org.gnome.desktop.privacy remember-recent-files false #Wyłącza "Nagrywanie plików i użytkowania aplikacji" 
gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ hsize 2 #
gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ vsize 2 #Włącza ekrany robocze.
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-timeout 0 #Komputer nie zostanie uśpiony jeśli jest na zasilaniu sieciowym.
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-timeout 600 #Na baterii uśpienie po 10 minutach.
gsettings set org.gnome.settings-daemon.plugins.power lid-close-battery-action suspend #Kiedy pokrywa zostaje zamknieta - uśpienie komputera (zasilanie sieciowe).
gsettings set org.gnome.settings-daemon.plugins.power lid-close-ac-action suspend #Kiedy pokrywa zostaje zamknieta - uśpienie komputera (bateria).
gsettings set org.gnome.desktop.privacy send-software-usage-stats false #Przestaje wysyłać statystyki użytkowania aplikacji do Canonical.
gsettings set org.gnome.desktop.screensaver lock-enabled true #Blokowanie ekranu po nieaktywności włączone.
gsettings set org.gnome.desktop.screensaver lock-delay uint32 3600 #Blokuj ekran po godzinie.
gsettings set org.gnome.desktop.screensaver idle-delay uint32 0 #Nigdy nie wyłączaj ekranu.


