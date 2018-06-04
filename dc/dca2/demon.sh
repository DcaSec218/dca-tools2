#!/bin/bash
pkg update && pkg upgrade
pkg install -y nano
pkg install -y figlet
pkg install -y ruby
gem install lolcat
pkg install -u nmap
pkg install -y python2
pkg install -y git
pkg install -y cmatrix
clear
cmatrix -s 
figlet DCA TOOLS | lolcat
echo -------------------"DEMON CYBER ARMY---------------------"
echo "masukkan web:"
read web
nmap $web;
echo "###$#########################################################"
echo "admin finder"
cd admin-finder
python2 admin-finder.py $web;
