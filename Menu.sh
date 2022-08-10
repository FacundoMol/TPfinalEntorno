#!/bin/bash

ARCHIVO=textoprueba.txt # texto de prueba

select aplicacion in  statsWords.sh  stastUsageWords.sh findNames.sh statsSentences.sh blankLinesCounter.sh

do

bash $aplicacion $ARCHIVO

done


