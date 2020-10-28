#!/bin/bash
if [ $# -le 5 ];
then
	echo "Provide the experiment to run (1 or 2), amount of reads out of 10, the amount of servers and all the hostnames or IPs"
	exit 1
fi

experiment=$1
n_reads=$2
n_servers=$3

servers=""

for srv in "${@:4:$n_servers}"
do
	servers="${servers}${servers:+ }$srv"
done

n_servers=$((n_servers + 4))

ids=1

for srv in "${@:$n_servers}"
do
	if [ $experiment == 1 ]; then
		ssh $USER@$srv /home/$USER/DPS_A1/start_client1.sh $n_reads $ids $servers
	else
		ssh $USER@$srv /home/$USER/DPS_A1/start_client2.sh $ids $servers
	fi	
	ids=$((ids + 1))
done
