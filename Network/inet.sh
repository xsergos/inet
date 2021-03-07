#!/bin/bash

iptables -F
if lshw -short -c network | grep 8168 > /dev/null
then
	wget https://raw.githubusercontent.com/xsergos/inet/main/Network/r8168.deb
	dpkg -i r8168.deb
	rmmod r8169
	modprobe r8168
	echo "blacklist r8169" >> /etc/modprobe.d/blacklist.conf
else
	wget https://raw.githubusercontent.com/xsergos/inet/main/Network/e1000e.tar.gz
	tar -xvf e1000e.tar.gz
	cd e1000e/src
	make install
	rmmod e1000e
	modprobe e1000e
fi
