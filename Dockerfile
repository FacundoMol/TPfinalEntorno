FROM ubuntu:latest
MAINTAINER FacundoMol
WORKDIR TPfinalEntorno

ADD statsWords.sh .
ADD statsUsageWords.sh .
ADD findNames.sh .
ADD statsSentences.sh .
ADD blankLinesCounter.sh .
ADD Menu.sh .
ADD textoprueba.txt .

COPY . /home/facundo/TPfinalEntorno
RUN chmod a+wrx *.sh textoprueba.txt
ENTRYPOINT ["./Menu.sh"]

