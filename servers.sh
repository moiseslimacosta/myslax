#!/bin/bash


echo "installing Pi-Hole"
sleep 3s
curl -sSL https://install.pi-hole.net | bash
clear


echo "installing HomeBridge"
sleep 3s
curl -sSfL https://repo.homebridge.io/KEY.gpg | sudo gpg --dearmor | sudo tee /usr/share/keyrings/homebridge.gpg  > /dev/null

echo "deb [signed-by=/usr/share/keyrings/homebridge.gpg] https://repo.homebridge.io stable main" | sudo tee /etc/apt/sources.list.d/homebridge.list > /dev/null

sudo apt-get update -y

sudo apt-get install homebridge -y

sudo wget https://raw.githubusercontent.com/moiseslimacosta/myslax/main/config.json

sudo mv config.json /var/lib/homebridge/

clear

echo "Back to CLI in 10 seconds."
echo "Press Enter to Next install."
read -t 10 
read_exit_status=$?

if [ $read_exit_status = 0 ]; 
then
	clear
	echo "next install"
	curl -sSL https://raw.githubusercontent.com/moiseslimacosta/myslax/main/jmusicbot.sh | bash
	else
		echo "Timeout"
	fi
	echo 'next install'
	echo 'curl -sSL https://raw.githubusercontent.com/moiseslimacosta/myslax/main/jmusicbot.sh | bash'