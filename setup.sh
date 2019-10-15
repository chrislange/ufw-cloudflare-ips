#!/bin/bash
wget -O ipv6.txt https://www.cloudflare.com/ips-v6
wget -O ipv4.txt https://www.cloudflare.com/ips-v4
clear

ipv4=./ipv4.txt
ipv6=./ipv6.txt

while IFS= read -r line
do
    ufw allow from $line to any port 443
    sudo ufw allow proto tcp from any to any port 80,443
done < "$ipv4"

while IFS= read -r line
do
    ufw allow from $line to any port 443
done < "$ipv6"

rm *.txt

#echo "y" | sudo ufw enable
ufw status