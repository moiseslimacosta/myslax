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
echo 'User=root' >>  /etc/systemd/system/qbittorrent.service
echo '   ' >>  /etc/systemd/system/qbittorrent.service
echo 'ExecStart=/usr/bin/qbittorrent-nox -d' >>  /etc/systemd/system/qbittorrent.service
echo '[Install]' >>  /etc/systemd/system/qbittorrent.service
echo 'WantedBy=multi-user.target' >>  /etc/systemd/system/qbittorrent.service

systemctl daemon-reload
systemctl start qbittorrent.service
systemctl status qbittorrent.service
systemctl enable qbittorrent.service


curl -sSL https://raw.githubusercontent.com/moiseslimacosta/myslax/main/servers.sh | bash