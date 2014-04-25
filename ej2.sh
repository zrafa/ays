#!/bin/bash

# Ejemplo 2. Utilizacion de case-esac para seleccion
#  case palabra in [ ( patrón [ | patrón ] ... ) lista ;; ] ... esac

if [[ "$#" -lt 2 ]] ; then
        echo "Uso: $0 Signalnumber PID"; exit 1
fi

case "$1" in
        9) echo  "Enviando SIGKILL al proceso $2"
           kill -SIGKILL $2
           ;;
        15)  echo  "Enviando SIGTERM al proceso $2"
            kill -SIGTERM $2
            ;;
        *) echo "$1 no es controlada en este programa"
           ;;
esac

