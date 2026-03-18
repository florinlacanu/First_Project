#!/bin/bash

CONT="calc_cont"
IMG="calc_img"

echo "=====Va incepe procesul de inchidere si stergere a containerului si imaginii: ====="

echo "==Inchidere container: =="
if docker stop "$CONT" 2>/dev/null; then
	echo "Containerul $CONT a fost oprit!"
else
	echo "Containerul $CONT nu exista"
fi
echo
echo "==Stergere container: =="
if docker rm "$CONT" 2>/dev/null; then
	echo "Containerul $CONT a fost sters!"
else
	echo "Containerul $CONT nu exista"
fi
echo
echo "==Stergere imagine: =="
if docker rmi "$IMG" 2>/dev/null; then
	echo "Imaginea $IMG a fost stearsa"
else
	echo "Imaginea $IMG nu exista"
fi
echo
echo "==Verificare containere: =="
docker ps -a
echo
echo "==Verificare imagini: =="
docker images
