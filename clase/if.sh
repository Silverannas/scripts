#! /bin/bash
function error_no_es_fichero() {
	echo "El elemento $1 no es un fichero."
	echo "param 2 = $2 y param3 = $3"
}
function error_fichero_vacio() {
	echo "El fichero $1 está vacío."
	echo "param 2 = $2 y param3 = $3"
}

if [ $# != 0 ]
then
	fichero=$1
else
	read -p "Introduce un fichero: " fichero
fi

if [[ -f $fichero && -s $fichero ]]
then
	echo "El elemento '$fichero' es un fichero y tiene contenido."
elif [[ ! -f $fichero ]]
then
	error_no_es_fichero $fichero $fichero $fichero
	exit 1
else
	error_fichero_vacio $fichero $fichero $fichero
	exit 1
fi
exit 0
