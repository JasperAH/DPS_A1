#!/bin/bash
if [ $# -le 3 ];
then
	echo "Provide client ID, number of local workers, number of messages, and server hostnames or IPs as argument."
	exit 1
fi
 
cid=$1
n_workers=$2
n_messages=$3

servers=""

for srv in "${@:4}"
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
	nohup /home/$USER/DPS_A1/zookeeper-client-c/cli_st -h $servers -c "2 $cid.$i $n_messages" &
done

#wait

#end=`date +%s`

#`echo "start $start end $end" > /home/$USER/output/${cid}`
