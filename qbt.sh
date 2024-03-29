#!/bin/bash
apt install qbittorrent qbittorrent-nox -y

sudo useradd -r -m qbittorrent
sudo usermod -a -G qbittorrent moises

echo '[Unit]' >>  /etc/systemd/system/qbittorrent.service
echo 'Description=qBittorrent Daemon Service' >>  /etc/systemd/system/qbittorrent.service
echo 'After=network.target' >>  /etc/systemd/system/qbittorrent.service
echo '   ' >>  /etc/systemd/system/qbittorrent.service
echo '[Service]' >>  /etc/systemd/system/qbittorrent.service
echo 'Type=forking' >>  /etc/systemd/system/qbittorrent.service
echo 'User=moises' >>  /etc/systemd/system/qbittorrent.service
echo '   ' >>  /etc/systemd/system/qbittorrent.service
echo 'ExecStart=/usr/bin/qbittorrent-nox -d' >>  /etc/systemd/system/qbittorrent.service
echo '[Install]' >>  /etc/systemd/system/qbittorrent.service
echo 'WantedBy=multi-user.target' >>  /etc/systemd/system/qbittorrent.service

systemctl daemon-reload
systemctl start qbittorrent.service
systemctl status qbittorrent.service
systemctl enable qbittorrent.service


clear

echo "Next install in 5 seconds."
echo "Press Enter to CLI"
read -t 5 
read_exit_status=$?
if [ $read_exit_status != 0 ]; then
clear
echo "next install"
./servers.sh
else
echo "Back to CLI"
fi