#!/bin/bash
# Ejercicio 3

touch textodepurado.txt
touch textonombres.txt
ARCHIVO=$1
#for palabra in $(cat $1);
#do
echo $palabra | cut -d [",",".","-",";","!","_","?","¿","(",")"] >> textodepurado.txt
#done

#DOCUMENTO=$(cat textodepurado.txt)

 
/home/facundo/TPfinalEntorno/textodepurado.txt | grep -o '\^[ZA][za]*' | cat >>  textonombres.txt 
#cat $DOCUMENTO | grep -o '\^[ZA][za]*' | cat >  textonombres.txt


echo$(cat textonombres.txt)


#rm textodepurado.txt
#rm textonombres.txt
