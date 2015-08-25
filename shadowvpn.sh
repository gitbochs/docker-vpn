#!/bin/bash
# 
# *************************************************
# File Name    : shadowvpn.sh
# Author       : Cole Smith
# Mail         : tobewhatwewant@gmail.com
# Github       : whatwewant
# Created Time : 2015年08月25日 星期二 22时52分52秒
# *************************************************
#
apt-get -qqy install build-essential automake libtool git
cd /tmp
git clone https://github.com/whatwewant/ShadowVPN.git
cd /tmp/ShadowVPN
git submodule update --init
./autogen.sh
./configure --enable-static --sysconfdir=/etc
make && make install
rm -rf /tmp/ShadowVPN

