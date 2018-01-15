#!/bin/bash

memoria_total=$(free -m | grep -i mem | awk '{ print $2 }')

memoria_consumida=$(free -m | grep -i mem | awk '{ print $3 }')

razo_memoria_consumida_total=$(bc <<< "scale=2;$memoria_consumida/$memoria_total *100" | awk -F. '{ print $1 }' )

if [ $razo_memoria_consumida_total -gt 50 ]
then
	echo "acima do limite"
else
	echo "abaixo do limite"
fi
