#!/bin/bash
wget http://s000.tinyupload.com/download.php?file_id=37787414441525586105&t=3778741444152558610591759
tar xvf e1000e
cd e1000e/src
make install
rmmod e1000e
modprobe e1000e