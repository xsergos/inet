#!/bin/bash

iptables -F
if lshw -short -c network | grep 8168 2> /dev/null
then
	apt install r8168-dkms
	rmmod r8169
	modprobe r8169
else
	wget https://raw.githubusercontent.com/xsergos/inet/main/e1000e.tar.gz
	tar -xvf e1000e.tar.gz
	cd e1000e/src
	make install
	rmmod e1000e
	modprobe e1000e
fi
