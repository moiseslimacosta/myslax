#!/bin/bash


echo "creating user"
sleep 3s
adduser moises
usermod -aG sudo moises
mkdir /home/moises/Downloads
mkdir /home/moises/Desktop
mkdir /home/moises/Documents
mkdir /home/moises/Music
mkdir /home/moises/Pictures
mkdir /home/moises/Videos
mkdir /home/moises/Media
mkdir /home/moises/jmusicbot
chmod 777 /home/moises/Downloads
chmod 777 /home/moises/Desktop
chmod 777 /home/moises/Documents
chmod 777 /home/moises/Music
chmod 777 /home/moises/Pictures
chmod 777 /home/moises/Videos
chmod 777 /home/moises/Media
chmod 777 /home/moises/jmusicbot
clear

echo "Back to CLI in 10 seconds."
echo "Press Enter to Next install."
read -t 10 
read_exit_status=$?
if [ $read_exit_status = 0 ]; then
clear
echo "next install"
curl -sSL https://raw.githubusercontent.com/moiseslimacosta/myslax/main/samba.sh | bash
else
echo "Timeout"
fi
echo 'next install'
echo 'curl -sSL https://raw.githubusercontent.com/moiseslimacosta/myslax/main/samba.sh | bash'