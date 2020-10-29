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

./bin/zkCli.sh -server $servers create /$cid > /dev/null

data=`cat ./1kdata`

#n_requests=0
start=`date +%s`

for i in {1..100}
do
	for j in {10..1}
	do
		if [ $j -le $n_reads ] ; then
			`/home/$USER/DPS_A1/bin/zkCli.sh -server ${servers} set /${cid} ${data} > /dev/null &`
			#n_requests=$((n_requests + 1))
			#`echo $n_requests > /home/$USER/output/${n_reads}_${cid}`
		else
			`/home/$USER/DPS_A1/bin/zkCli.sh -server ${servers} get /${cid} > /dev/null &`
			#n_requests=$((n_requests + 1))
			#`echo $n_requests > /home/$USER/output/${n_reads}_${cid}`
		fi
	done	
done

end=`date +%s`

`echo "start $start end $end" > /home/$USER/output/${n_reads}_${cid}`

