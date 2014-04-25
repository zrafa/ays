#!/bin/bash

# Ejemplo 1. Utilizacion de parametros posicionales
# $*	$1 $2 $3 … ${N}
# $@	$1 $2 $3 … ${N}
# "$*"	"$1c$2c$3c…c${N}"
# "$@"	"$1" "$2" "$3" … "${N}"
# $#	Indica la cantidad de argumentos

if [[ "$#" -lt 1 ]] ; then
	echo "Error. Necesita al menos un argumento"
	exit 1
fi

for i in "$*" ; do 
	echo $i
done

for i in "$@" ; do 
	echo $i
done

