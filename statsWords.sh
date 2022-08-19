#!/bin/bash
#Ejercicio 1


MASLARGA=2
MASCORTA=100
PROMEDIODELONGITUD=0
CANTIDADCARACTERES=0
ARCHIVO=$1


for i in $(cat textoprueba.txt);
do
	palabra=$(echo ${#i})
	if [[ $palabra -gt $MASLARGA ]];
        then
                MASLARGA=$(($palabra))
        fi

	if [[ $palabra -lt $MASCORTA ]] && [[ $palabra -gt 1 ]];
	then
		MASCORTA=$(($palabra))
	fi

	CANTIDADCARACTERES=$(($CANTIDADCARACTERES + $palabra))
	
done

CANT_PALABRAS=$(wc -w < textoprueba.txt)
PROMEDIODELONGITUD=$(($CANTIDADCARACTERES/$CANT_PALABRAS))

echo "La palabra màs larga tiene "$MASLARGA" caracteres"
echo "La palabra màs corta tiene "$MASCORTA" caracteres"
echo "El promedio de las palabras del texto tiene "$PROMEDIODELONGITUD" caracteres" 


















