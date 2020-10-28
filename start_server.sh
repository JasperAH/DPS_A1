#!/bin/bash
if [ $# != 1 ]
then
	echo "Provide server ID as argument."
fi

myid=$0

mkdir /local/$USER/zooData
touch /local/$USER/zooData/myid
echo "$myid" > /local/$USER/zooData/myid


./bin/zkServer.sh start
