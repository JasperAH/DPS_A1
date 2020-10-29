#!/bin/bash
if [ $# -ne 1 ]
then
	echo "Provide server ID as argument."
	exit 1
fi

myid=$0

mkdir /local/$USER
mkdir /local/$USER/zooData
touch /local/$USER/zooData/myid
echo "$myid" > /local/$USER/zooData/myid


/home/$USER/DPS_A1/bin/zkServer.sh start
