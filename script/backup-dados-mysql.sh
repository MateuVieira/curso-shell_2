#!/bin/bash

caminho_backup=~/workspace/Projetos/curso-shell_2

cd $caminho_backup

if [ ! -d backup ]
then
	mkdir backup
fi


mysqldump -u root $1 > $caminho_backup/backup/$1.sql
if [ $? -eq 0 ]
then
	echo "Backup foi realizado com sucesso"
else
	echo "Houve algum erro durante o processo"
fi
