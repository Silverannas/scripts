#! /bin/bash

if [[ -z $1 ]]
then
	read -p "Introduzca un número entre 1 y 10: " numero
else
	numero=$1
fi
echo "El número $numero es...."
case $numero in
	2 | 4 | 6 | 8 | 10 | 0)
		echo "Es par.";;
	*)
		echo "Es impar.";;
	
esac
exit 0
