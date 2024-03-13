#!/bin/bash

echo "creating user"
sleep 3s
adduser moises
usermod -aG sudo moises
su - moises
mkdir download mount desktop documents music pictures videos jmusic
sudo chmod 777 download mount desktop documents music pictures videos jmusic 


curl -sSL https://raw.githubusercontent.com/moiseslimacosta/myslax/main/samba.sh | bash