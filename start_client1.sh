#!/bin/bash

if [ $# -le 3 ];
then
	echo "Provide amount of reads out of 10, client ID, and server hostnames or IPs as argument."
	exit 1
fi

n_reads=$1
cid=$2

servers=""

for srv in "${@:3}"
do
	servers+=",$srv:2181"
done
servers="${servers:1}"

n_proc=$(nproc)


for i in $(seq 1 $n_proc);
do
	/home/$USER/DPS_A1/start_client1_local.sh $n_reads $cid.$i "${@:3}"
done


