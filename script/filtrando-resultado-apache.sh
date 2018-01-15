#!/bin/bash

cd ..

regex="\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"

if [[ $1 =~ $regex ]]
then
	cat apache.log | grep $1
	if [ $? -ne 0 ]
	then
		echo "O endereco IP não existe nos dados"
	fi
else
	echo "Formato nao e valido" 
fi

