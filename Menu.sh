#!/bin/bash

ARCHIVO=textoprueba.txt # texto de prueba

select aplicacion in  statsWords.sh  statsUsageWords.sh findNames.sh statsSentences.sh blankLinesCounter.sh

do

bash $aplicacion $ARCHIVO
break
done


