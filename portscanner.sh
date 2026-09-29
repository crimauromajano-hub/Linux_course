#! /bin/bash

#Ctrl+C
function ctrl_c(){
	echo -e "\n\n [!] Saliendo...\n"
	exit 1
}

trap ctrl_c INT

for port in $(seq 31000 32000); do
	(echo '' > /dev/tcp/127.0.0.1/$port) > /dev/null && echo "[+] Puerto $port abierto" || echo -e "\n $port is closed \n"
done
