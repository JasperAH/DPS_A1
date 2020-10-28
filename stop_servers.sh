#!/bin/bash
if [ $# == 0 ]
then
	echo "Provide server hostnames or IPs as arguments."
	exit 1
fi


for srv in "$@"
do
	ssh $USER@$srv /home/$USER/DPS_A1/bin/zkServer.sh stop
done



	
