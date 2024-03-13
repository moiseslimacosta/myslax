#!/bin/bash


echo "installing samba"
sleep 3s
apt-get install samba samba-common-bin -y
clear
echo '########' >>  /etc/samba/smb.conf
echo '########' >>  /etc/samba/smb.conf
echo '[share]' >>  /etc/samba/smb.conf
echo 'Comment = User shared folder' >>  /etc/samba/smb.conf
echo 'Path = /home/moises/' >>  /etc/samba/smb.conf
echo 'Browseable = yes' >>  /etc/samba/smb.conf
echo 'Writeable = Yes' >>  /etc/samba/smb.conf
echo 'only guest = no' >>  /etc/samba/smb.conf
echo 'create mask = 0777' >>  /etc/samba/smb.conf
echo 'directory mask = 0777' >>  /etc/samba/smb.conf
echo 'Public = no' >>  /etc/samba/smb.conf
echo 'Guest ok = no' >>  /etc/samba/smb.conf
echo '########' >>  /etc/samba/smb.conf
echo '########' >>  /etc/samba/smb.conf
echo '[external]' >>  /etc/samba/smb.conf
echo 'Comment = external disk shared folder' >>  /etc/samba/smb.conf
echo 'Path = home/moises/Media/usbdrive/' >>  /etc/samba/smb.conf
echo 'Browseable = yes' >>  /etc/samba/smb.conf
echo 'Writeable = Yes' >>  /etc/samba/smb.conf
echo 'only guest = no' >>  /etc/samba/smb.conf
echo 'create mask = 0777' >>  /etc/samba/smb.conf
echo 'directory mask = 0777' >>  /etc/samba/smb.conf
echo 'Public = no' >>  /etc/samba/smb.conf
echo 'Guest ok = no' >>  /etc/samba/smb.conf

smbpasswd -a moises
echo "service Restarting"
sleep 3s
/etc/init.d/samba-ad-dc restart

clear

echo "Next install in 5 seconds."
echo "Press Enter to CLI"
read -t 5 
read_exit_status=$?
if [ $read_exit_status != 0 ]; then
clear
echo "next install"
./qbt.sh | bash
else
echo "Back to CLI"
fi'