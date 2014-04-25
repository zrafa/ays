#!/bin/bash

# Ejemplo 5. Comunicandonos con el mundo. 
# Enviando correos al administrador

# Este programa realiza un backup e informa por email

TEMP=/tmp/tmp.$$


echo "To: autoyscripting@gmail.com
From: autoyscripting@gmail.com
Subject: Informacion del BACKUP 

" >$TEMP

tar czf /tmp/backup-etc.tar.gz /etc  >>$TEMP  2>&1 

if [[ "$?" == "0" ]]; then
	echo "El backup fue exitoso" >>$TEMP
else
	echo "El backup tuvo problemas. Revisar." >>$TEMP
fi

cat $TEMP | msmtp -a default  autoyscripting@gmail.com
rm $TEMP
