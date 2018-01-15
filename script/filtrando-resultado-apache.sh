#!/bin/bash

cd ..

regex="\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"

if [[ $1 =~ $regex ]]
then
	cat apache.log | grep $1
else
	echo "Formato nao e valido" 
fi

