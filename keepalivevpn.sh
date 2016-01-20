#!/bin/bash
while [ 1 ]
do
vpn_device=`sudo ifconfig |grep -E 'tun|vpn'|cut -f 1 -d ' '`
if [ -e $vpn_device ]
then sudo pkill keepalivevpn.sh
sh killvpn.sh
fi
sudo curl -s 10.135.96.13 > /dev/null
sleep 300
done &
