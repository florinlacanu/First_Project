#!/bin/bash

echo "Container will be closed:"
if docker stop calc_cont; then
	echo "Container has stoped"
else
	echo "Container doesn't exist"
fi
