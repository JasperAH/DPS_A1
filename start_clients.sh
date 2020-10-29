#!/bin/bash
if [ $# -le 4 ];
then
	echo -e "Provide: \n1) the experiment to run (1 or 2), 
	\n2a) (exp. 1) the amount of reads out of 10, 
	\n2b) (exp. 2) the amount of workers (can be 1,5,10 with respective amount of servers of 1,2,2),
	\n3) the amount of servers,
	\n4) all the hostnames or IPs."
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
		ssh $USER@$srv /home/$USER/DPS_A1/start_client1.sh $n_reads $ids $servers &
		ids=$((ids + 1))
	else
		# change for loop for multiple users, values of 1, 5, 10. N.B. n_servers must be 1 for value 1, and n_servers must be 2 for the others
		for cl in $(seq 1 $n_reads);
		do
			ssh $USER@$srv /home/$USER/DPS_A1/start_client2.sh $ids.$cl $servers &
			ids=$((ids + 1))
		done
	fi		
done
