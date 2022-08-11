#!/bin/bash
# Ejercicio 3

touch textodepurado.txt
touch textonombres.txt
ARCHIVO=$1
#VA=""

for palabra in $(cat textoprueba.txt);
do
echo $palabra | tr -d [".",";","?","-","_",")","!",",",":"] >> textodepurado.txt
grep -o  '^[A-Z][a-z]*' textodepurado.txt  >> textonombres.txt
done

echo $(cat textonombres.txt)

#DOCUMENTO=$(cat textodepurado.txt)

#touch textonombres.txt

#/c/Users/fjm25/Desktop/Facundo/TUIA/Entorno de Programación/repo tp final/TPfinalEntorno/textodepurado.txt | grep -o '^[A-Z][a-z]*' >>  textonombres.txt 
#cat $DOCUMENTO | grep -o '^[A-Z][a-z]*' | cat >>  textonombres.txt
#grep -o  '^[A-Z][a-z]*' $DOCUMENTO  >> textonombres.txt



#echo cat textonombres.txt


#echo $VA

#rm textodepurado.txt
#rm textonombres.txt
