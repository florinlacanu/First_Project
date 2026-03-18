#!/bin/bash

echo "COntainerul se va opri:"
if docker stop calc_cont; then
	echo "Containerul s-a oprit"
else
	echo "Containerul nu se opreste sau inexistent"
fi
