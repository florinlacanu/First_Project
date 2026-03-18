#!/bin/bash
echo

INTERFACE="docker0"
echo "=====Afiseaza stare conectare retea $INTERFACE:====="
if ip link show "$INTERFACE" &> /dev/null; then
        if ip link show "$INTERFACE" | grep -q 'state UP'; then
                echo "Reteaua $INTERFACE este conectata (UP)"
        else
                echo "Reteaua $INTERFACE nu  este conectata (DOWN)"
        fi
else
        echo "Reteaua $INTERFACE nu exista"
fi
echo

echo "======Afiseaza existenta IP retea $INTERFACE:====="
ip -br a |grep "$INTERFACE" |awk '{print$3}'

echo

echo "===Testare conexiune internet==="
if ping -c 2 8.8.8.8 &> /dev/null; then
	echo "Exista conexiune"
else
	echo "Nu exista conexiune"
fi

echo

echo "=====Afisare ip route:====="
ip route |grep "$INTERFACE" | awk '{print""$9}'

IP=$(ip route |grep "$INTERFACE" | awk '{print$9}')
echo

echo "=====Pornire test route:====="
if ping -c 2 "$IP"; then
	echo
	echo "Conexiune fara probleme"
else
	echo
	echo "Lipsa conexiune"
fi
echo
echo "=====DNS TEST====="
if ping -c 2 google.com; then
	echo
	echo "Verificare corecta"
else
	echo
	echo "Verificare esuata"
fi
