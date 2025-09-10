#!/bin/sh
pip install gdown
gdown "https://drive.google.com/uc?id=1FsvUeEqgSut3PFiKRkeNl7IqItJ778dI" -O archive.tar.gz
tar -xzvf archive.tar.gz -C /root
cd BTCW
mkdir /root/BTCW/wildrig
apt update && apt install -y libhwloc-dev sysstat default-jdk numactl proxychains screen curl
wget https://github.com/andru-kun/wildrig-multi/releases/download/0.45.0/wildrig-multi-linux-0.45.0.tar.xz
tar -xf wildrig-multi-linux-0.45.0.tar.xz -C /root/BTCW/wildrig
mv /root/BTCW/wildrig/wildrig-multi /root/BTCW/
mv /root/BTCW/watchdog.conf /etc/supervisor/conf.d/
mv /root/BTCW/final.conf /etc/supervisor/conf.d/
chmod +x /root/BTCW/wildrig-multi
chmod +x /root/BTCW/final.sh
chmod +x /root/BTCW/final2.sh
chmod +x /root/BTCW/watchdog.sh
chmod +x /root/BTCW/watchdog2.sh
chmod +x /root/BTCW/watchdog0.sh
