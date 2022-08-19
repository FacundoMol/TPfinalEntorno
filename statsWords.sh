#!/bin/bash
#Ejercicio 1

CONTADOR=0
MASLARGA=2
MASCORTA=3
PROMEDIODELONGITUD=0
CANTIDADCARACTERES=0
touch textodepurado.txt 
ARCHIVO=$1

for palabra in $(cat textoprueba.txt); do
echo $palabra | tr -d [".",",",";","!","-","?","(",")"] >> textodepurado.txt
done


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

rm textodepurado.txt
















