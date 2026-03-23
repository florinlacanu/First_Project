#!/bin/bash

CONT="calc_cont"
ST="calculator.py"
IMG="calc_img"
echo "Create docker image:"
if docker build -t "$IMG" .; then
	echo "Image $IMG has been created!"
else
	echo "Error!"
fi
echo
echo "Create docker container:"
if docker run -itd --name "$CONT" "$IMG"; then
	echo "Container $CONT has been created!"
else
	echo "Error!"
fi
echo "!Congratulations! Let's start!"
docker exec -it "$CONT" python3 "$ST"
echo

