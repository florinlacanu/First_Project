#!/bin/bash

echo "Calculator"

if docker start calc_cont; then
	echo "Open container"
else
	echo "Container can't open"
fi

if docker exec -it calc_cont python3 calculator.py; then
	echo "Thank you"
else
	echo "Nonfunctional"
fi
