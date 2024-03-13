mkdir install
cd install
wget https://raw.githubusercontent.com/moiseslimacosta/myslax/main/inicial_config.sh
chmod +x inicial_config.sh
wget https://raw.githubusercontent.com/moiseslimacosta/myslax/main/new_user.sh
chmod +x new_user.sh
wget https://raw.githubusercontent.com/moiseslimacosta/myslax/main/samba.sh
chmod +x samba.sh
wget https://raw.githubusercontent.com/moiseslimacosta/myslax/main/qbt.sh
chmod +x qbt.sh
wget https://raw.githubusercontent.com/moiseslimacosta/myslax/main/servers.sh
chmod +x servers.sh
wget https://raw.githubusercontent.com/moiseslimacosta/myslax/main/jmusicbot.sh
chmod +x jmusicbot.sh

./inicial_config.sh
