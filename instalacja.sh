#!/bin/bash
#
# Instalacja Serwera TeamSpeak 3
#

# Aktualizacja systemu
apt update
apt upgrade

# Tworzenie uzytkownika ts3
adduser ts3

#pobieranie plikow sera 
wget https://files.teamspeak-services.com/releases/server/3.13.3/teamspeak3-server_linux_amd64-3.13.3.tar.bz2

#rozpakowanie
tar -xvjf teamspeak3-server_linux_amd64-3.13.3.tar.bz2

# zmiana nazwy floderu na ts3
mv teamspeak3-server_linux_amd64 ts3

#usuwanie katalogu ts3
cd /home
rm -fr ts3
cd

#przenoszenie plikow serwera do katalogu usera ts3
mv ts3 /home
cd /home

#nadawanie praw dla uzytkownika ts3
chown -R ts3 ts3

#przechodzenie na uzytkownika ts3
cd /home/ts3
su ts3

#nadawanie praw plikom
chmod +x ts3server_startscript.sh
chmod +x ts3server










	
