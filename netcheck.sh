#!/bin/bash
echo

INTERFACE="docker0"
echo "Network status check $INTERFACE:"
if ip link show "$INTERFACE" &> /dev/null; then
        if ip link show "$INTERFACE" | grep -q 'state UP'; then
                echo "$INTERFACE is connected (UP)"
        else
                echo "$INTERFACE isn't connected (DOWN)"
        fi
else
        echo "$INTERFACE doesn't exist"
fi
echo

echo "IP check $INTERFACE:"
ip -br a |grep "$INTERFACE" |awk '{print$3}'

echo

echo "Teste internet connection:"
if ping -c 2 8.8.8.8 &> /dev/null; then
	echo "Connection established"
else
	echo "No connection"
fi

echo

echo "IP route:"
ip route |grep "$INTERFACE" | awk '{print""$9}'

IP=$(ip route |grep "$INTERFACE" | awk '{print$9}')
echo

echo "Test route:"
if ping -c 2 "$IP"; then
	echo
	echo "Connection established"
else
	echo
	echo "No connection"
fi
echo
echo "=====DNS TEST====="
if ping -c 2 google.com; then
	echo
	echo "Ok"
else
	echo
	echo "Error"
fi
