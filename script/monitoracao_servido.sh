#!/bin/bash

resposta_http=$(curl --write-out %{http_code} --silent  --output /dev/null http://localhost)

if [ $resposta_http -eq 200 ]
then
	echo "Servido ON"
else
	echo "Houve um problema no servidor. Tentando reiniciar"
	systemctl restart apache2
	echo "... Servidor reinicializado"
fi
