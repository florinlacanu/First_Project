#!/bin/bash
I="Mem"
echo "Check connected people:"
w | grep "user" |awk '{print$7}'
echo "Check data loading:"
uptime
echo
echo "Total memory:"
free -h | grep "$I" |awk '{print$2}'
echo
echo "Used memory:"
free -h | grep "$I" |awk '{print$3}'
echo
echo "Available memory:"
free -h | grep "$I" |awk '{print$7}'
echo
echo "Check Swap memory:"
free -h | grep "Swap"
echo
echo "Percentage of memory used:"
df -h | grep "/dev/nvme0n1p5" | awk '{print$5}'
