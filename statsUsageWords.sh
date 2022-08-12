#!/bin/bash
# Ejercicio 2

touch usodepalabras.txt
touch textodepurado1.txt
touch usopalabrasfinal.txt
ARCHIVO=$1

for palabra in $(cat textoprueba.txt); do
echo $palabra | tr -d [",",".","-",";","!","_","?","?","¿","(",")"] >> textodepurado1.txt
done



for palabra in $(cat textodepurado1.txt);
do
	if [[ ${#palabra} -gt 3 ]];
	then
		grep -o $palabra textodepurado1.txt | wc -l >> usodepalabras.txt
		echo $palabra >> usodepalabras.txt
	fi
done



cat usodepalabras.txt | sort -r -u | head -10 >> usopalabrasfinal.txt
echo $(cat usopalabrasfinal.txt)

rm usodepalabras.txt
rm textodepurado1.txt
rm usopalabrasfinal.txt
