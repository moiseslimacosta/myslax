#!/bin/bash


wget https://raw.githubusercontent.com/moiseslimacosta/myslax/main/JMusicBot.service
mv JMusicBot.service /etc/systemd/system/
# wget https://raw.githubusercontent.com/moiseslimacosta/myslax/main/config.txt
# mv config.txt /home/moises/jmusicbot
mkdir /home/moises/jmusicbot/Playlist
wget https://github.com/jagrosh/MusicBot/releases/download/0.4.0/JMusicBot-0.4.0.jar
mv JMusicBot-0.4.0.jar /home/moises/jmusicbot/jmusicbot.jar
systemctl start JMusicBot
systemctl enable JMusicBot


echo "Program will terminate 10 seconds."
echo "Press Enter to reboot."
read -t 10 
read_exit_status=$?

if [ $read_exit_status = 0 ]; then
echo "Rebooting now"
reboot
else
echo "Timeout"
fi