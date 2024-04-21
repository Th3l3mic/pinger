#! /bin/bash

if [ "$1" == "" ]
then
echo "-------------------------------------------"
echo "Type first 3 octets of IP address"
echo "Example usage: ./pingsweep.sh 192.168.0"
echo "-------------------------------------------"
	exit 0
else
echo "Those hosts are up and running: "
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" > hosts.txt | cat hosts.txt &
done
fi

echo "---------------------------------------"
printf "\n[+] Results save in hosts.txt file" 


