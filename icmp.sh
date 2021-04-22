#!/bin/bash
echo "Network Test Result for" $1
date
echo $2
echo "External IP : "
echo "Network Type : "$3
echo "ICMP Test :"
ping $1 -c 10
echo "========================="
echo Traceroute :
traceroute -m 25 -n $1
echo "========================="