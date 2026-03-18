#!/bin/bash

CONT="calc_cont"
ST="calculator.py"
IMG="calc_img"
echo "=====Incepem creare imagine docker:====="
if docker build -t "$IMG" .; then
	echo "Imaginea $IMG a fost creata!"
else
	echo "Eroare la creearea imaginii!"
fi
echo
echo "=====Incepem creearea containerului:====="
if docker run -itd --name "$CONT" "$IMG"; then
	echo "Containerul $CONT a fost creat!"
else
	echo "Eroare creare container!"
fi
echo "=====!!!FELICITARI!!!=====Sa testam aplicatia:====="
docker exec -it "$CONT" python3 "$ST"
echo

