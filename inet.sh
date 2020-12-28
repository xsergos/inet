# !/bin/bash

wget https://raw.githubusercontent.com/xsergos/inet/main/e1000e.tar.gz
tar -xvf e1000e.tar.gz
cd e1000e/src
make install 
rmmod e1000e
modprobe e1000e
