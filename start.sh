#!/bin/bash

echo "=====Calculator====="

if docker start calc_cont; then
	echo "Container deschis"
else
	echo "Containerul nu se deschide"
fi

if docker exec -it calc_cont python3 calculator.py; then
	echo "Multumim"
else
	echo "Nefunctional"
fi
