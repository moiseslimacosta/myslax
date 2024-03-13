#!/bin/bash

echo "updating sistem"
sleep 2s
apt update -y && apt upgrade -y
clear

echo "install essencial"
sleep 2s
apt install build-essential  -y 
clear

echo "updating"
sleep 2s
apt update -y && apt upgrade -y
clear

echo "starting ssh"
sleep 2s
service ssh start
clear

echo "ssh auto start on boot"
sleep 2s
systemctl enable ssh
update-rc.d ssh deafult
clear


echo "Setting time zone"
sleep 2s
timedatectl set-timezone America/Sao_Paulo
date
sleep 2s
clear

echo "disable gui"
sleep 2s
systemctl disable xorg
clear

echo "installing curl"
sleep 2s
apt install curl -y
clear

#echo "installing git"
#sleep 2s
#apt install git -y
#clear

echo "installing apt repository"
sleep 2s
apt install software-properties-common
clear

echo "installing vsftpd"
sleep 2s
apt-get install vsftpd -y
clear

echo "installing sudo"
sleep 2s
apt install sudo -y
clear

echo "final update"
sleep 2s
apt update -y && apt upgrade -y
clear

echo "all tasks done"
sleep 2s

curl -sSL https://raw.githubusercontent.com/moiseslimacosta/myslax/main/new_user.sh | bash
