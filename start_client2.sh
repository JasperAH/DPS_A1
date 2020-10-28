#!/bin/bash
if [ $# -le 2 ];
then
	echo "Provide client ID, and server hostnames or IPs as argument."
	exit 1
fi
 
cid=$1

servers=""

for srv in "${@:2}"
do
	servers+=",$srv:2181"
done
servers="${servers:1}"

#./bin/zkCli.sh -server $servers create /$cid > /dev/null

data=`cat ./1kdata`

start=`date +%s`

#for i in {1..50000}
for i in {1..500}
do
	`./bin/zkCli.sh -server ${servers} create /${cid}.$i "${data}" > /dev/null &`
	`./bin/zkCli.sh -server ${servers} delete /${cid}.$i > /dev/null &`
done

wait

end=`date +%s`

`echo "start $start end $end" > /home/$USER/output/${cid}`
