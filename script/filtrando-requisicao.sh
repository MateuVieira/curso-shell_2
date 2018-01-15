#!/bin/bash

cd ..

if [ -z $1 ]
then
	read -p "Voce esqueceu de colocar o parametro (GET,PUT,POST,DELETE): " requsicao
	letra_maiuscula=$(echo $requisicao | awk '{ print toupper($1)}')
else
	letra_maiuscula=$(echo $1 | awk '{ print toupper($1)}')
fi


case $letra_maiuscula in
	GET)
	cat apache.log | grep GET
	;;

	POST)
	cat apache.log | grep POST
	;;

	PUT)
	cat apache.log | grep PUT
	;;

	DELETE)
	cat apache.log | grep DELETE
	;;

	*)
	echo "O parametro passado nao é valido"
	;;

esac
