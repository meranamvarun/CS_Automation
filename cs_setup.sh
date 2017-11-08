#! /bin/bash

sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get install lib32gcc1 libc6-i386
password="steam"
pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
sudo useradd -m -p $pass steam
sudo mkdir -p /home/steam/SteamCMD
sudo wget -O /home/steam/SteamCMD  http://media.steampowered.com/installer/steamcmd_linux.tar.gz
sudo tar -xvzf /home/steam/SteamCMD/steamcmd_linux.tar.gz -C /home/steam/SteamCMD
sudo chown -R steam:steam /home/steam/SteamCMD
sudo rm /home/steam/SteamCMD/steamcmd_linux.tar.gz
sudo su - steam

