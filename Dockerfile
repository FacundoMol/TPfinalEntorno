FROM ubuntu:latest
MAINTAINER FacundoMol
WORKDIR TPfinalEntorno
COPY /home/facundo/TPfinalEntorno
ENTRYPOINT ["./Menu.sh"]

