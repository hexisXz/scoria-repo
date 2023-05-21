#!/bin/sh

pkgname='waterfox'

pkgdescription='an alternative browser to firefox'

pkgsource='https://www.waterfox.net/'

dependencies="wget"

pkginstall='binary'


pkgconfig() {
	if command -v xbps-install 2>/dev/null; then
		sudo xbps-install wget && wget -O waterfox.tar.bz2 "https://cdn1.waterfox.net/waterfox/releases/G5.1.7/Linux_x86_64/waterfox-G5.1.7.tar.bz2" && tar -xvjf waterfox.tar.bz2 -C ./ && rm waterfox.tar.bz2 && sudo mkdir -p /opt/waterfox && sudo mv waterfox /opt/waterfox && cd /opt/waterfox/waterfox && sudo ln -s /opt/waterfox/waterfox/waterfox /usr/bin/waterfox

	fi


	if command -v apt 2>/dev/null; then
		sudo apt install wget && wget -O waterfox.tar.bz2 "https://cdn1.waterfox.net/waterfox/releases/G5.1.7/Linux_x86_64/waterfox-G5.1.7.tar.bz2" && tar -xvjf waterfox.tar.bz2 -C ./ && rm waterfox.tar.bz2 && sudo mkdir -p /opt/waterfox && sudo mv waterfox /opt/waterfox && cd /opt/waterfox/waterfox && sudo ln -s /opt/waterfox/waterfox/waterfox /usr/bin/waterfox
	
	fi


	if command -v pacman 2>/dev/null; then
		sudo pacman -S wget && wget -O waterfox.tar.bz2 "https://cdn1.waterfox.net/waterfox/releases/G5.1.7/Linux_x86_64/waterfox-G5.1.7.tar.bz2" && tar -xvjf waterfox.tar.bz2 -C ./ && rm waterfox.tar.bz2 && sudo mkdir -p /opt/waterfox && sudo mv waterfox /opt/waterfox && cd /opt/waterfox/waterfox && sudo ln -s /opt/waterfox/waterfox/waterfox /usr/bin/waterfox

	fi


	if command -v dnf 2>/dev/null; then
		sudo dnf install wget && wget -O waterfox.tar.bz2 "https://cdn1.waterfox.net/waterfox/releases/G5.1.7/Linux_x86_64/waterfox-G5.1.7.tar.bz2" && tar -xvjf waterfox.tar.bz2 -C ./ && rm waterfox.tar.bz2 && sudo mkdir -p /opt/waterfox && sudo mv waterfox /opt/waterfox && cd /opt/waterfox/waterfox && sudo ln -s /opt/waterfox/waterfox/waterfox /usr/bin/waterfox

	fi
}


pkgconfig
