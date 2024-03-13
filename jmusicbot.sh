#!/bin/bash


wget https://raw.githubusercontent.com/moiseslimacosta/myslax/main/jmusicbot/JMusicBot.service
mv JMusicBot.service /etc/systemd/system/
wget https://raw.githubusercontent.com/moiseslimacosta/myslax/main/config.txt
mv config.txt /home/moises/jmusicbot
mkdir /home/moises/jmusicbot/Playlist
wget https://github.com/jagrosh/MusicBot/releases/download/0.4.0/JMusicBot-0.4.0.jar
mv JMusicBot-0.4.0.jar /home/moises/jmusicbot/jmusicbot.jar

echo "Open config file insert token and owner"
echo "save and type exit"
sleep 5
echo "nano /home/moises/jmusicbot/config.txt"
su - root
echo "config is done?"
echo "press enter to continue."
read -t  50000
read_exit_status=$?
if [ $read_exit_status = 0 ]; then
clear
echo "continue"
else
clear
echo "Back to CLI"
fi

systemctl start JMusicBot
systemctl enable JMusicBot

clear

echo "cleaning..."
cd ~
rm -r install

echo "Next install in 5 seconds."
echo "Press Enter to CLI"
read -t 5 
read_exit_status=$?
if [ $read_exit_status != 0 ]; then
clear
echo "Rebooting"
./jmusicbot.sh | bash
else
echo "Back to CLI"
fi