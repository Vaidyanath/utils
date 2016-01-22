set -xe
gw_ip=`sudo route -n|grep ^0|grep -E 'wl|usb|ppp|eth|wwan|wwx|enx'|awk '{print $2}'`
sudo openconnect --config=/home/vaidy/jiovpn.conf jiovpn.hackalyst.info
sleep 5
vpn_device=`sudo ifconfig |grep -E '^tun|^vpn'|cut -f 1 -d ':'|awk '{print $1}'`
sudo route del -net 0.0.0.0 netmask 0.0.0.0 dev $vpn_device
sudo route add default gw $gw_ip
sudo route add -net 10.135.0.0/16 dev $vpn_device
sudo route add -net 10.204.0.0/16 dev $vpn_device
sudo route add -net 10.140.0.0/16 dev $vpn_device
sudo route add -net 100.12.0.0/24 dev $vpn_device
sudo route add -net 49.40.0.0/16 dev $vpn_device
sudo sh keepalivevpn.sh
