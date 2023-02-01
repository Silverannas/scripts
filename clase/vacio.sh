#! /bin/bash

read -p "Introduzca un fichero: " fichero

if [[ -f $fichero ]]
then
	echo "El elemento '$fichero' es un fichero."
else
	echo "El elemento '$fichero' no es un fichero."
	exit 1
fi		
	if [[ -s $fichero ]]
	then
		echo "El elemento '$fichero' tiene contenido."
	else
		echo "El elemento '$fichero' está vacío."
		exit 1
	fi
exit 0
