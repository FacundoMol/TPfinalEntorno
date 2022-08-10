#!/bin/bash
#Ejercicio 1

CONTADOR=0
MASLARGA=0
MASCORTA=2
PROMEDIODELONGITUD=0
CANTIDADCARACTERES=0
touch textodepurado.txt 
ARCHIVO=$1

echo $palabra | cut -d [".",",",";","!","_","-","?","¿","(",")"] >> textodepurado.txt

for palabra in $(cat textodepurado.txt);
do
	if [[ ${#palabra} -lt $MASCORTA ]]
	then
		MASCORTA=${#palabra}
	fi
	if [[ ${#palabra} -gt $MASLARGA ]]
	then 
		MASLARGA=$(( ${#palabra} ))
	fi
	CANTIDADCARACTERES=$(($CANTIDADCARACTERES + ${#palabra}))
	CONTADOR=$(($CONTADOR + 1))
done

PROMEDIODELONGITUD=$(($CANTIDADCARACTERES / $CONTADOR))

echo "La palabra màs larga tiene "$MASLARGA" caracteres"
echo "La palabra màs corta tiene "$MASCORTA" caracteres"
echo "El promedio de las palabras del texto tiene "$PROMEDIODELONGITUD" caracteres" 

rm textodepurado.txt















