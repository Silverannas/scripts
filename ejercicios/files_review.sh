#! /bin/bash

# **************** FUNCIONES ****************
function printMenu() {
	echo "-------------------MENÚ-------------------"
	echo ""
	echo "1)Buscar ficheros por antigüedad."
	echo ""
	echo "2)Buscar ficheros con permisos poco seguros."
	echo ""
	echo "3)Buscar opciones 1 y 2."
	echo ""
	echo "-------------------------------------------"
	echo ""
	echo "0)Salir."
	echo ""
	echo ""
}
function errorMenu() {
	echo "ERROR! Opción incorrecta. Debe introducir una de las opciones del menú."
}
declare -i exit=0
while [ $exit -eq 0 ];
do
	printMenu
read num

while [ $num -gt 3 ] || [ $num -lt 1 ];
do 
	printMenu

	read -p "Seleccione una opción (1,2,3 o 0): " num
done
	case $num in
	1)
		read -p "Introduzca un número de días: " ndias
		find /home -atime $ndias > oldfiles.txt ;;
	2)
		read -p "Introduzca los permisos en formato numérico: " per
		find /home -perm $per > weakfiles.txt ;;
	3)
		read -p "Introduzca el número de días: " ndias
		read -p "Introduzca los permisos en formato numérico: " per
		find /home -atime $ndias -perm $per > dangerous.txt ;;
	*)
		errorMenu;;
esac;
done	
exit 0
