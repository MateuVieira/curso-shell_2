#!/bin/bash

cd ..

local letra_maiuscula=$(echo $1 | awk '{ print toupper($1)}')

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

esac
