#!/bin/bash

CONT="calc_cont"
IMG="calc_img"

echo "The process of closing and deleting the container and image will begin:"

echo "Container closure:"
if docker stop "$CONT" 2>/dev/null; then
	echo "Container $CONT has been stoped!"
else
	echo "Container $CONT doesn't exist!"
fi
echo
echo "Container deletion:"
if docker rm "$CONT" 2>/dev/null; then
	echo "Container $CONT has been deleted!"
else
	echo "Container $CONT doesn't exist"
fi
echo
echo "Image deletion:"
if docker rmi "$IMG" 2>/dev/null; then
	echo "Image $IMG has been deleted"
else
	echo "Image $IMG doesn't exist"
fi
echo
echo "Container check:"
docker ps -a
echo
echo "Verificare imagini:"
docker images
