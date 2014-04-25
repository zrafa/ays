#!/bin/bash

# Ejemplo 4. Programas elaborados. Programas con opciones
# Como controlar diferentes opciones.
# Uso de while, case, shift y break.

while :
do
    case "$1" in
      -h | --help)
	  echo "Uso: ej4.sh [-h] [--info paq] [--buscar paq]"
	  exit 0
	  ;;
      --info)
	  apt-cache show $2
	  shift 2
	  ;;
      --buscar)
	  apt-cache search $2 | grep $2
	  shift 2
	  ;;
      -*)
	  echo "Error: No reconozco el argumento: $1"
	  exit 1
	  ;;
      *)  # No hay mas argumentos
	  break
	  ;;
    esac
done
