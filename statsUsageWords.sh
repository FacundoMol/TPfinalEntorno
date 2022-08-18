#!/bin/bash
# Ejercicio 2

touch usodepalabras.txt

ARCHIVO=$(cat $1)

for palabra in $ARCHIVO;do
	if [[ ${#palabra} -gt 3 ]]; then
		PALABRA_CONTADA=$(echo $palabra | tr -d [",",".","-",";","!","_","?","?","¿","(",")"]) 
		echo "$(grep -o -i $palabra textoprueba.txt | wc -l) "$PALABRA_CONTADA"" >> usodepalabras.txt		
	fi
done

cat usodepalabras.txt | sort -r -u | head -10

rm usodepalabras.txt

