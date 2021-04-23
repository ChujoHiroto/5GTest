#!/bin/bash
fname=`date +%Y%m%d_%H:%M:%S.txt`
echo ==================== Tokyo EC2 >> $fname
./icmp.sh 46.51.228.162 "$1" | tee -a $fname
echo ==================== Osaka EC2 >> $fname
./icmp.sh 13.208.136.186 "$1" | tee -a $fname
echo ==================== WL Tokyo >> $fname
./icmp.sh 106.161.66.113 "$1" | tee -a $fname
echo ==================== WL Osaka >> $fname
./icmp.sh 106.161.81.68 "$1" | tee -a $fname