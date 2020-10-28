#!/bin/bash
if [ $# == 0 ]
then
	echo "Provide server hostnames or IPs as arguments."
fi

cp ./conf/zooTemplate.cfg ./conf/zoo.cfg

myid=1

for srv in "$@"
do
	echo "server.$myid=$srv:2888:3888" >> ./conf/zoo.cfg

	myid=$((myid + 1))
done


myid=1

for srv in "$@"
do
	ssh $USER@$srv /home/$USER/.../start_server.sh $myid
	myid=$((myid + 1))
done



	
