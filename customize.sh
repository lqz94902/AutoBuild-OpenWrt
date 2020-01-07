#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. 修改默认 IP
sed -i 's/192.168.1.1/192.168.123.1/g' openwrt/package/base-files/files/bin/config_generate
#2. 修改 hosts
sed -i '/ff02::2 ip6-allrouters/a 192.168.123.1 k2p.me k2p.com' openwrt/package/base-files/files/etc/hosts
