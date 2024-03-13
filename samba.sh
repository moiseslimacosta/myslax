#!/bin/bash
echo "installing samba"
sleep 3s
apt-get install samba samba-common-bin -y
clear
echo "configuring"
echo "wait for choose password"
sleep 3s

mkdir /home/moises/share
mkdir /home/moises/mount
echo '########' >>  /etc/samba/smb.conf
echo '########' >>  /etc/samba/smb.conf
echo '[share]' >>  /etc/samba/smb.conf
echo 'Comment = root shared folder' >>  /etc/samba/smb.conf
echo 'Path = /home/moises/share' >>  /etc/samba/smb.conf
echo 'Browseable = yes' >>  /etc/samba/smb.conf
echo 'Writeable = Yes' >>  /etc/samba/smb.conf
echo 'only guest = no' >>  /etc/samba/smb.conf
echo 'create mask = 0777' >>  /etc/samba/smb.conf
echo 'directory mask = 0777' >>  /etc/samba/smb.conf
echo 'Public = yes' >>  /etc/samba/smb.conf
echo 'Guest ok = yes' >>  /etc/samba/smb.conf
echo '########' >>  /etc/samba/smb.conf
echo '########' >>  /etc/samba/smb.conf
echo '[external]' >>  /etc/samba/smb.conf
echo 'Comment = external disk shared folder' >>  /etc/samba/smb.conf
echo 'Path = home/moises/mount/usbdrive' >>  /etc/samba/smb.conf
echo 'Browseable = yes' >>  /etc/samba/smb.conf
echo 'Writeable = Yes' >>  /etc/samba/smb.conf
echo 'only guest = no' >>  /etc/samba/smb.conf
echo 'create mask = 0777' >>  /etc/samba/smb.conf
echo 'directory mask = 0777' >>  /etc/samba/smb.conf
echo 'Public = yes' >>  /etc/samba/smb.conf
echo 'Guest ok = yes' >>  /etc/samba/smb.conf

smbpasswd -a moises
echo "service Restarting"
sleep 3s
/etc/init.d/samba-ad-dc restart


curl -sSL https://raw.githubusercontent.com/moiseslimacosta/myslax/main/qbt.sh | bash