#!/bin/bash
# Ejercicio 4


LINES=$(cat textoprueba.txt)
CANT_LINEAS=0
CORTEORACION="[,.?!]"
CANT_CORTES=0
CANT_ORACIONES=0
CANT_LARGA=1
CANT_CORTA=3
PROMEDIO=0
IFS="[.!?]"
FRASE_LARGA=""
FRASE_CORTA=""
LALINEA=0

CANT_LINEAS=$(wc -l < textoprueba.txt)

for palabra in $(cat textoprueba.txt); do
        if [[ $palabra =~ $CORTEORACION ]];
        then
		CANT_CORTES=$(( CANT_CORTES + 1 ))
        fi
done


CANT_ORACIONES=$(($CANT_CORTES+$CANT_LINEAS))
CANT_PALABRAS=$(wc --word < textoprueba.txt)


while IFS= read -r line; do
	LALINEA=$(echo $line | wc -w)
	if [[ $LALINEA -lt $CANT_CORTA ]]; then
		echo "dale"
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

   #if [[ $LALINEA -eq 1 ]]; then
                #FRASE_CORTA=$line
                #CANT_CORTA=$LALINEA
                #else
                        #if [[ $LALINEA -lt $CANT_CORTA ]]; then
                                #FRASE_CORTA=$line
                                #CANT_CORTA=$LALINEA
                        #fi
        #fi
