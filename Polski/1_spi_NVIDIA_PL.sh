#!/bin/sh
#Nazwa:Post-Instalacyjny Skrypt dla Ubuntu 16.04 LTS  w jezyku polskim dla użykowników NVIDIA.
#Opis: Instaluje kodeki, przydatne aplikacje i konfiguruje system
#Usage: sudo bash 1_Skrypt_PostInstalacyjny_NVIDIA_qnapi_dla_Polskich_Użytkowników.sh
#Autor: Michał Klekowicki
#Data: 1 June 2016

echo "Ten skrypt zainstaluje zbiór przydatnych programów dla Ubuntu 16.04, doda repozytoria z najnowszymi sterownikami dla kart graficznych oraz zminimalizuje spowolnienia związane z użyciem pamięci SWAP (szczegóły w README)."

echo

read -p "Używając tego skryptu pobierzesz oraz zainstalujesz również Wine i PlayOnLinux, Ograniczone Dodatki Ubuntu (z wyłączeniem Flasha), czcionki Microsoft a także oprogramowanie firm trzecich (Skype, Google Chrome, Steam, Spotify). Czy chcesz kontynuować? (n/T)" -n 1 -r
if [[ $REPLY =~ ^[Tt]$ ]]
then
	#Podstawowa konfiguracja przed dalszą instalacją
	sudo dpkg --add-architecture i386 #dodaje obsługę architektury i386
	echo 'vm.swappiness = 10' >> /etc/sysctl.conf #zmienia wartość swappiness na "10"
	echo deb http://repository.spotify.com testing non-free | sudo tee /etc/apt/sources.list.d/spotify.list #dodaje repozytorium testowych wersji Spotify
	sed -i "/^# deb .*partner/ s/^# //" /etc/apt/sources.list #uaktywnia repozytorium Partnerów Canonical
	add-apt-repository -y ppa:wine/wine-builds #dodaje repozytorium Wine

	#Aktualizuje listę dostępnych pakietów
	apt-get update

	#Instalacja Ograniczonych Dodatków Ubuntu oraz czcionek
	apt-get install -y gstreamer1.0-fluendo-mp3 gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-fluendo-mp3 lame libdvdread4 libavcodec-extra libavcodec-ffmpeg-extra56 libk3b6-extracodecs oxideqt-codecs-extra unrar  #instaluje Ograniczone Dodatki Ubuntu bez Flasha
	apt-get install -y ttf-mscorefonts-installer #instaluje czcionki Microsoft


	#Instaluje podstawowe aplikacje
	apt-get install -y asunder audacious audacity bleachbit calibre comix converseen dosbox fbreader gimp gimp-plugin-registry gimp-gmic gimp-ufraw inkscape python-gobject ufw gufw geany pyroom qnapi stellarium synaptic vlc

	#instaluje najnowszą rozwojową wersję Wine
	apt-get --assume-yes install --install-recommends winehq-devel

	#instaluje PlayOnLinux, Skype, Google Chrome, 
	wget https://www.playonlinux.com/script_files/PlayOnLinux/4.2.10/PlayOnLinux_4.2.10.deb
	dpkg -i PlayOnLinux_4.2.10.deb
	wget download.skype.com/linux/skype-ubuntu-precise_4.3.0.37-1_i386.deb
	dpkg -i skype-ubuntu-precise_4.3.0.37-1_i386.deb
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	dpkg -i google-chrome-stable_current_amd64.deb
	rm PlayOnLinux_4.2.10.deb
	rm skype-ubuntu-precise_4.3.0.37-1_i386.deb
	rm google-chrome-stable_current_amd64.deb

	#Instaluje Spotify i Steam
	apt-get --assume-yes install spotify-client #Spotify
	apt-get --assume-yes install steam #Steam

	#Instaluje wszystkie brakujące zależności
	apt-get -f install -y

	#Dodaje repozytorium dla użytkowników kart graficznych firmy Nvidia
	apt-add-repository ppa:graphics-drivers/ppa

	#Aktualizuje listę dostępnych pakietów
	apt-get update

	#Uzupełnia pakiety językowe
	apt-get -y install `check-language-support -l ??`

	#Instaluje wszelkie dostępne upgrade'y
	apt-get -y upgrade

	#uruchamia firewall z podstawową konfiguracją
	ufw enable
	
	#restartuje komputer:)
	reboot
else
	echo
	echo "Porzucanie wykonywania skryptu."
fi
