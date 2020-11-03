#!/bin/bash
if [ $# -le 2 ];
then
	echo "Provide client ID, number of local workers, and server hostnames or IPs as argument."
	exit 1
fi
 
cid=$1
n_workers=$2

servers=""

for srv in "${@:3}"
do
	servers+=",$srv:2181"
done
servers="${servers:1}"

#./bin/zkCli.sh -server $servers create /$cid > /dev/null

#data=`cat ./1kdata`

#start=`date +%s`
n_proc=$(nproc)

#for i in {1..50000}
for i in $(seq 1 $n_workers);
do
	`/home/$USER/DPS_A1/zookeeper-client-c/cli_st -h $servers -c "2 $cid.$i 0" &`
done

#wait

#end=`date +%s`

#`echo "start $start end $end" > /home/$USER/output/${cid}`
