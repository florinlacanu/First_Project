#!/bin/bash
P=$(w -h | awk '{print$1}')
echo "Check Connected people: $P"
echo
C=$(lscpu | grep -m 1 "CPU(s):" | awk '{print$2}')
echo "Core processors: $C"
echo
C1=$(lscpu | grep "On-line CPU(s) list:" | awk '{print$4}')
echo "Online core processors: $C1"
echo
D=$(uptime | awk -F 'load average:' '{print$2}')
echo "Check data loading: $D"
echo
F=$(free -h | grep "Mem" |awk '{print$2}')
echo "Total Memory: $F"
echo
F1=$(free -h | grep "Mem" |awk '{print$3}')
echo "Used Memory: $F1"
echo
F2=$(free -h | grep "Mem" |awk '{print$7}')
echo "Available Memory: $F2"
echo
F3=$(free -h | awk NR==3 | awk '{print$2}')
echo "Swap Memory: $F3"
echo
F4=$(df -h / | awk NR==2 | awk '{print$5}')
echo "Percentage of Memory Used: $F4"
