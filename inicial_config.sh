#!/bin/bash



echo "Time & date"
sleep 2s
apt install chrony -y
service chrony restart
date
sleep 3s
clear

echo "updating sistem"
sleep 2s
apt update -y && apt upgrade -y
clear


echo "installing apt lib"
sleep 2s
sudo apt install python3-launchpadlib -y
clear


echo "installing apt repository"
sleep 2s
apt install software-properties-common -y
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


#echo "Setting time zone"
#sleep 2s
#timedatectl set-timezone America/Sao_Paulo
#date
#sleep 2s
#clear


echo "disable gui"
sleep 2s
systemctl disable xorg
clear


echo "installing wget"
sleep 2s
apt install wget -y
clear


echo "installing curl"
sleep 2s
apt install curl -y
clear


echo "installing git"
sleep 2s
apt install git -y
clear


echo "installing vsftpd"
sleep 2s
apt-get install vsftpd -y
clear


echo "installing sudo"
sleep 2s
apt install sudo -y
clear


echo "installing gparted"
sleep 2s
apt install gparted -y
clear


echo "installing java"
sleep 2s
sudo apt-get install default-jre -y
clear


echo "final update"
sleep 2s
apt update -y && apt upgrade -y
clear


echo "all tasks done"
sleep 2s
clear


echo "Rebooting in 5 seconds."
echo "Press Enter to Back to CLI."
read -t 5 
read_exit_status=$?
if [ $read_exit_status != 0 ]; then
clear
echo "Rebooting"
reboot
else
echo "Timeout"
fi
