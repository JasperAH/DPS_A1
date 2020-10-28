#!/bin/bash
if [ $# < 2 ]
then
	echo "Provide amount of reads out of 5 and server hostnames or IPs as argument."
fi

n_reads=$0

servers=""

for srv in "${@:2}"
do
	servers+=",$srv"
done
servers="${servers:1}"

./bin/zkCli.sh -server $servers <commands>
