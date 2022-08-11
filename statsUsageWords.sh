#!/bin/bash
# Ejercicio 2

touch usodepalabras.txt
touch textodepurado1.txt
ARCHIVO=$1

echo $palabra | tr -d [",",".","-",";","!","_","?","?","¿","(",")"] >> textodepurado1.txt

for palabra in $(cat textodepurado1.txt);
do
	if [[ ${#palabra} -gt 3 ]];
	then
		#DEPURADA=$(echo $palabra | tr -d [",",".","-",";","!","_","?","¿","(",")"])
		$(grep -o -i $palabra textodepurado1.txt | wc -l)  >> usodepalabras.txt
	fi
done

cat usodepalabras.txt | sort -u -r | head -10

rm usodepalabras.txt
rm textodepurado1.txt
