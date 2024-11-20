#!/bin/bash

clear

# --- Colors ---
red='\033[1;91m'
green='\033[1;92m'
yellow='\033[1;93m'
blue='\033[1;94m'
purple='\033[1;95m'
cyan='\033[1;96m'
white='\033[1;97m'

echo -e "$green Updating Termux..."
apt update && apt upgrade -y
echo ""
echo -e "$green Installing Termux-API..."
pkg install termux-api -y
echo ""
echo -e "$green Installing PHP..."
pkg install php -y
echo ""
echo -e "$green Installing Curl..."
pkg install curl -y
echo ""
echo -e "$green Installing Hydra..."
pkg install hydra -y
echo ""
echo -e "$green Installing Python + requirements..."
pkg install python python2 -y
pip install requests colorama
pip2 install requests colorama

echo -e "$green Installing sslscan..."
pkg install sslscan -y

if [ -f /data/data/com.termux/files/usr/bin/lolcat ]; then
    echo -e "$green lolcat installed! ... Done"
else
    echo -e "$red [!] lolcat not found!"
    echo ""
    echo -e "$cyan Installing lolcat"
    pkg install ruby -y
    gem install lolcat
    echo -e "$green installation of lolcat ... DONE"
fi

chmod +x *

cd core
git clone https://github.com/TechnicalMujeeb/Termux-speak.git
cd Termux-speak
chmod +x *
cd ..
cd ..

echo -e "$green Installation Finished!"
echo ""
echo -e "$yellow Now Run ls.py with python2"
echo ""
echo -e "$cyan Subscribe to Technical Mujeeb YT channel for more scripts"
echo ""
