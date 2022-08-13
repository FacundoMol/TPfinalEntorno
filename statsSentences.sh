#!/bin/bash
# Ejercicio 4


ARCHIVO=$1
CANT_LINEAS=0
CORTEORACION="[,.?!]"
CANT_CORTES=0
CANT_ORACIONES=0
CANT_LARGA=1
CANT_CORTA=500
PROMEDIO=0
IFS="[.!?]"
FRASE_LARGA=""
FRASE_CORTA=""
LALINEA=0

CANT_LINEAS=$(wc -l < textoprueba.txt)

for palabra in $ARCHIVO; do
        if [[ $palabra =~ $CORTEORACION ]];
        then
		CANT_CORTES=$(( CANT_CORTES + 1 ))
        fi
done


CANT_ORACIONES=$(($CANT_CORTES+$CANT_LINEAS))
CANT_PALABRAS=$(wc --word < textoprueba.txt)

while IFS= read -r line; do
	LALINEA=$(echo $line | wc -w)
	if [[ $LALINEA -lt $CANT_CORTA ]] && [[ $LALINEA -ne 0 ]]; then 
		FRASE_CORTA=$line
		CANT_CORTA=$LALINEA
	fi
	if [[ $LALINEA -gt $CANT_LARGA ]]; then
		FRASE_LARGA=$line
		CANT_LARGA=$LALINEA
	fi


done < textoprueba.txt

PROMEDIO=$(($CANT_PALABRAS/$CANT_ORACIONES))

echo "La frase más corta es: " $FRASE_CORTA
echo "La frase más larga es: " $FRASE_LARGA
echo "El promedio es de: " $PROMEDIO

