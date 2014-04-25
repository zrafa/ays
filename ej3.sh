#!/bin/bash

# Ejemplo 3. read para interactuar con el usuario
# read [nombre..] lee  una  línea  desde  la  entrada
# estándar, y la primera palabra se asigna al  primer  nombre,

N=0

printf "Ingrese cantidad de lineas : "
read NRO_LINEAS

cat /etc/passwd | 
while read linea && [[ "$N" -lt NRO_LINEAS ]] ; do
        echo "Linea $N : " $linea

        ((N+=1))
done
