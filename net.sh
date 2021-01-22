#!/bin/bash

export LC_ALL=C

pt=mail.yandex.ru

enable_disable_wifi ()
{
   result=$(nmcli dev | grep "ethernet" | grep -w "connected")
   geth=$(ip link | awk -F: '$0 !~ "lo|vir|wl|^[^0-9]"{print $2;getline}')
   ping -c1 -I $geth $pt &> /dev/null
   pinger=$?
   if [[ -n "$result" && "$pinger" == "0" ]];
   then
           #nmcli radio wifi off
           echo 1
   else
           #nmcli radio wifi on
           echo 2
   fi
}

enable_disable_wifi