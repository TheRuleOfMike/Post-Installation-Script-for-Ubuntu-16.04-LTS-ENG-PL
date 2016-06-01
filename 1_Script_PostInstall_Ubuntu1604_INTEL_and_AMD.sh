#!/bin/sh
echo "This script will install useful software for Ubuntu 16.04, add repositories for the latest GPU drivers and minimize performance issues connected to the usage of SWAP (check README for details)."

echo

read -p "While using this script you will also download and install Wine and PlayOnLinux as well as Ubuntu Restricted Extras (without Flash), Microsoft Core Fonts and third party software (Skype, Google Chrome, Steam, Spotify). Do you want to continue?" -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
	#Basic config and preparation for the rest of installation processes
	sudo dpkg --add-architecture i386 #enables the 32 bit (i386) architecture
	echo 'vm.swappiness = 10' >> /etc/sysctl.conf #changes swappiness to 10
	echo deb http://repository.spotify.com testing non-free | sudo tee /etc/apt/sources.list.d/spotify.list #adds the spotify repo non-free
	sed -i "/^# deb .*partner/ s/^# //" /etc/apt/sources.list #activates the Canonical Partner Repositories
	add-apt-repository -y ppa:wine/wine-builds #adds the wine repository

	#Upodate the list of available packages
	apt-get update #updates the list of available packages

	#Installing the restricted extras and Microsoft Core Fonts
	apt-get install -y gstreamer1.0-fluendo-mp3 gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-fluendo-mp3 lame libdvdread4 libavcodec-extra libavcodec-ffmpeg-extra56 libk3b6-extracodecs oxideqt-codecs-extra unrar  #installs the "restricted extras" but without flash (and good ridance
	apt-get install -y ttf-mscorefonts-installer #installs the Microsoft Core Fonts


	#Installing basic software
	apt-get install -y asunder audacious audacity bleachbit calibre comix converseen dosbox fbreader ufraw gimp gimp-plugin-registry gimp-gmic gimp-ufraw inkscape python-gobject ufw gufw geany pyroom stellarium synaptic vlc

	#installing the latest Wine wersion from the repositories
	apt-get --assume-yes install --install-recommends winehq-devel

	#installing PlayOnLinux, Skype, Google Chrome, 
	wget https://www.playonlinux.com/script_files/PlayOnLinux/4.2.10/PlayOnLinux_4.2.10.deb
	dpkg -i PlayOnLinux_4.2.10.deb
	wget download.skype.com/linux/skype-ubuntu-precise_4.3.0.37-1_i386.deb
	dpkg -i skype-ubuntu-precise_4.3.0.37-1_i386.deb
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	dpkg -i google-chrome-stable_current_amd64.deb
	rm PlayOnLinux_4.2.10.deb
	rm skype-ubuntu-precise_4.3.0.37-1_i386.deb
	rm google-chrome-stable_current_amd64.deb

	#Installing Spotify and Steam
	apt-get --assume-yes install spotify-client #Spotify
	apt-get --assume-yes install steam #Steam

	#Install all dependencies of needed
	apt-get -f install -y

	#Add the Oibaff Repository For Intel HD users
	add-apt-repository -y ppa:oibaf/graphics-drivers

	#Update the list of available packages
	apt-get update

	#Complete the language packages installation
	apt-get -y install `check-language-support -l ??`

	#Install all updates
	apt-get -y upgrade

	#Enable the firewall
	ufw enable

	#Restart the computer:)
	reboot
else
	echo
	echo "Aborting script execution."
fi
