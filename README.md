# TPfinalEntorno
Trabajo Práctico final de Entorno de Programación. El trabajo práctico lo realicé solo.

Facundo Molina

Primero se debe clonar el repositorio:

git clone https://github.com/FacundoMol/TPfinalEntorno.git


Creado la imagen con sudo docker build --tag tpfinal:1.0 . (el punto porque estamos posicionados en el directorio a buscar)

Testear la creación con docker images

Se ejecutará con docker run -it tpfinal:1.0 , el mismo tendrá como punto de entrada el script Menu.sh el cual despliega los scripts con las siguientes opciones:
(en base al número elegido correrá el respectivo script)

1. statsWords.sh
Indicador estadístico de longitud de palabras (la más corta, la más larga y el promedio de longitud).

2. statsUsageWords.sh
Indicador estadístico de uso de palabras, deben ser de al menos 4(cuatro) letras. (mostrar un Top Ten de estas palabras ordenadas desde la que tiene
más apariciones a la que tiene menos). Es decir, filtrar las palabras que tengan al menos 4 letras y de éstas, elegir las 10 más usadas.

3. findNames.sh
Identificación de nombres propios (se identifican sólo si están en este formato Nnnnnnnnn), aunque la palabra no sea un nombre propio realmente. Ejemplos: Mateo, Estonoesunnombre, Ana.

4. statsSentences.sh
Indicador estadístico de longitud de oraciones (la más corta, la más larga y el promedio de longitud).

5. blankLinesCounter.sh
Contador de líneas en blanco.
