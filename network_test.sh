#!/bin/bash

# That script displays information about network system and functionallity

echo "Check docker connection: "
if ip -br link show docker0 2>/dev/null | grep -q  "LOWER_UP"; then
	echo 'We have docker connection!'
else
	echo "We don't have docker connection!"
fi

echo

echo "Check network connection: "
if ip link show wlo1 2>/dev/null | grep -q "LOWER_UP"; then
	echo "We have network connection!"
else
	echo "We don't have network connection!"
fi

echo

echo "Check IP address for docker: "
ip a show docker0 |grep 'inet' |  awk '{print$2}'

echo

echo "Check internet connection: "
if ping -c 2 8.8.8.8; then
	echo "Internet connection!"
else
	echo "Bad request, internet doesn't exist!"
fi

echo

echo "Checking IP gateway: "
IP=$(ip route | grep 'default' | awk '{print$3}')
ip route | grep 'default' | awk '{print$3}'
echo
if ping -c 2 $IP; then
	echo "Gateway connection!"
else
	echo "Bad connection!"
fi

echo

echo "Checking DNS functionallitity: "
if dig +short google.com; then

	echo "Good functionallity!"
else
	echo "DNS Error!"
fi

echo

echo "Test reachable ports (53, 80, 443): "
if nc -z 8.8.8.8 53 2>/dev/null; then

	echo "Port 53 succeeded!"
else
	echo "Port 53 blocked!"
fi
echo
if nc -z google.com 443 2>/dev/null; then
	echo "Port 443 succeeded!"
else
	echo "Port 443 blocked!"
fi
echo
if nc -z google.com 80 2>/dev/null; then
	echo "Port 80 succeeded!"
else
	echo "Port 80 blocked!"
fi
