#!/bin/bash
# Ejercicio 3


touch textodepurado.txt
touch textonombres.txt
touch textonombresfinal.txt
ARCHIVO=$1
#VA=""

for palabra in $(cat textoprueba.txt);
do
echo $palabra | tr -d [".",";","?","-","_",")","!",",",":"] >> textodepurado.txt
grep -o  '^[A-Z][a-z]*' textodepurado.txt  >> textonombres.txt
done


cat textonombres.txt | sort | uniq > textonombresfinal.txt
echo $(cat textonombresfinal.txt)


rm textodepurado.txt
rm textonombres.txt
rm textonombresfinal.txt
