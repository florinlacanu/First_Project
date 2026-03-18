#!/bin/bash
I="Mem"
echo "=====Verificare persoane conectate:====="
w | grep "user" |awk '{print$7}'
echo "=====Verificare incarcare date:====="
uptime
echo
echo "=====Memorie totala:====="
free -h | grep "$I" |awk '{print$2}'
echo
echo "=====Memorie folosite:====="
free -h | grep "$I" |awk '{print$3}'
echo
echo "=====Memorie ramasa:====="
free -h | grep "$I" |awk '{print$7}'
echo
echo "=====Verificare memorie Swap:====="
free -h | grep "Swap"
echo
echo "=====Procent Memorie Utilizata:====="
df -h | grep "/dev/nvme0n1p5" | awk '{print$5}'
