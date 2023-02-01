#! /bin/bash
read -p "Introduzca su nombre: " nombre

if [[ -z $nombre ]];
then
	echo "ERROR! Debe introducir un nombre."
	exit 1
fi

read -p "Introduzca su edad: " edad

if [[ -z $edad ]];
then
	echo "ERROR! Debe introducir una edad."
	exit 1
fi
echo "Hola, $nombre. Tienes $edad años y estás usando $SHELL como shell."
exit 0
