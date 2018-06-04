#!/bin/bash
################################
#          lol tools #
#                              #
################################
# Variables
b='\033[1m'
u='\033[4m'
bl='\E[30m' 
r='\E[31m' 
g='\E[32m' 
y='\E[33m' 
bu='\E[34m' 
m='\E[35m' 
c='\E[36m' 
w='\E[37m' 
endc='\E[0m' 
enda='\E[0m' 
# initial apt update
apt update && apt upgrade
#script initation
figlet lol tools | lolcat
#install nmap
install nmap
echo
echo -e " installing ${b} nmap ${enda}"
echo -e " ${bu} nmap digunakan untuk mengecek ip ${endc}" 
echo && echo -en " ${y} press enter ${endc}"
read input
echo -e " installing ${b}nmap${endc}" 
apt install nmap
echo -e " ${b}nmap${enda} successfully"
echo && echo -en " ${y} enter ${enda}" 
echo
read input
