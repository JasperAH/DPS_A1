#!/bin/bash
if [ $# -le 5 ];
then
	echo "Provide the experiment to run (1 or 2), amount of reads out of 10, the amount of servers and all the hostnames or IPs"
	exit 1
fi

experiment=$1
n_reads=$2
n_servers=$3

./write_conf_and_start_servers.sh "${@:4:$n_servers}" 

sleep 5

./start_clients.sh "${@:1}"

