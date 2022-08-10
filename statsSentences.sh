#!/bin/bash
# Ejercicio 4

ARCHIVO=$1


FINALIZADORES=$(grep -o "['.' ',' '/n']" textoprueba.txt | wc -c )

echo $FINALIZADORES
 
#for oracion in 

