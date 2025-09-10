#!/bin/sh
apt update
apt install unzip
wget -q https://github.com/kingsrule2024/cloudworld2/archive/refs/heads/main.zip
unzip main.zip -C /root
mkdir /root/wildrig
apt update && apt install -y libhwloc-dev sysstat default-jdk numactl proxychains screen curl
wget https://github.com/andru-kun/wildrig-multi/releases/download/0.45.0/wildrig-multi-linux-0.45.0.tar.xz
tar -xf wildrig-multi-linux-0.45.0.tar.xz -C /root/wildrig
mv /root/wildrig/wildrig-multi /root/
mv /root/watchdog.conf /etc/supervisor/conf.d/
mv /root/final.conf /etc/supervisor/conf.d/
chmod +x /root/wildrig-multi
chmod +x /root/final.sh
chmod +x /root/final2.sh
chmod +x /root/watchdog.sh
chmod +x /root/watchdog2.sh
chmod +x /root/watchdog0.sh
