#! /bin/bash

sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get install lib32gcc1 libc6-i386
password="steam"
pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
sudo useradd -m -p $pass steam
sudo su steam
cd /home/steam
mkdir SteamCMD
chown steam:steam SteamCMD
cd steamCMD && wget http://media.steampowered.com/installer/steamcmd_linux.tar.gz
tar -xvzf steamcmd_linux.tar.gz
chown steam:steam steamcmd_linux
rm steamcmd_linux.tar.gz

