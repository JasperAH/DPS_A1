#!/bin/bash
if [ $# -lt 1 ];
then
	echo "Provide number of nodes to reserve."
	exit 1
fi
nnodes=$1

`preserve -# $nnodes -t 00:15:00`
nodes=`preserve -llist | grep -oP '$USER.*R\t[0-9]+\t\K(.*)'`

while [ -z "$nodes" ];
do
	nodes=`preserve -llist | grep -oP '$USER.*R\t[0-9]+\t\K(.*)'`
done


echo $nodes
