#!/bin/bash
# Ejercicio 4


ARCHIVO=$1
CANT_LINEAS=0
CORTEORACION="[,.?!]"
CANT_ORACIONES=0
CANT_LARGA=1
CANT_CORTA=500
PROMEDIO=0
IFS="[.!?]"
FRASE_LARGA=""
FRASE_CORTA=""


(wc -l textoprueba.txt | tr -d "textoprueba.txt") >> CANT_LINEAS



for palabra in $(cat textoprueba.txt); do
        if [[ $palabra =~ $CORTEORACION ]];
        then
		CANT_ORACIONES=$(( CANT_ORACIONES + 1 ))
        fi
done


cat CANT_LINEAS
CANT_ORACIONES=echo$(( $CANT_ORACIONES + $CANT_LINEAS ))

echo $CANT_ORACIONES

while read -r line;
do
        for frases in $line;
        do
                CANT_PALABRAS=$(($CANT_PALABRAS+1))
        done
        if [[ $CANT_PALABRAS -lt $CANT_CORTA ]];
        then
                FRASE_CORTA=$line
                CANT_CORTA=$CANT_PALABRAS
        if [[ $CANT_PALABRAS -gt $CANT_LARGA ]];
        then
                FRASE_LARGA=$line
                CANT_LARGA=$CANT_PALABRAS
        fi
done

PROMEDIO=$(( $CANT_CARACTERES / $CANT_PALABRAS))

echo "La frase más corta es $FRASE_CORTA "
echo "La frase más larga es $FRASE_LARGA "
echo "El promedio es de $PROMEDIO"

