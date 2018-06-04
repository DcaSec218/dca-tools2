#!/bin/bash
################################
#          lol tools           #
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
version=2018
spath="( cd "$( dirname $0 )" && pwd )"

#lol tools
clear
figlet lol tools | lolcat

# initial apt update
apt update && apt upgrade

#script initation
figlet lol tools | lolcat

#install nmap
function install nmap 
echo
echo -e " installing ${b} nmap ${enda}"
echo -e " ${bu} nmap digunakan untuk mengecek ip ${endc}"
echo && echo -en " ${y} press enter ${endc}"
read input
echo -e " installing ${b}nmap${endc}"
apt install nmap
echo -e " ${b}nmap${enda} successfully"
echo -en " ${y} press enter${endc}"
echo
read input

# information gathering
show text {
show logo
echo -e " ${b}[ information gathering ]${enda}"
echo -e " ${b}[${enda} option ${b}]${enda} ${b}[${enda} diskripsi ${b}]${enda}"
echo " 1) nmap
      ---------
       q) balik menu
echo
echo -en "pilih:"
read option
case $option in
1) nmap ;;
q) sleep 1 ;;
*) echo " \"$option\" tidak valid"; sleep 1; showtext ;;
esac
}

# exit lol tools
lexit () {
show logo && echo -e " ${y} bersih${endc}"
apt-get -y autoremove
apt-get -y autoclean
show logo && echo -e "terima kasih ${b}lol tools${enda}
informasi lainya:
${b}====> ${bu}https://0daysecurity98.blogspot.com/${enda}"
echo
sleep 1
exit
}

#infinite loop
while :
do
show logo
echo -e "{b}[ menu ]${enda}"
echo -e "{b}[${enda} option ${b}]${enda} ${b}[${enda} diskripsi ${b}]${enda}
      1) information gathering
      
      ------------------------
      
echo
echo -en " plih option:"
read option
case $option in
1) showtext ;;
q) lexit ;;
*) echo " \"$option\" tidak valid"; sleep 1 ;;
esac
done

#end
