FROM ubuntu:latest
MAINTAINER FacundoMol
WORKDIR TPfinalEntorno
ADD C:\Users\fjm25\Desktop\Facundo\TUIA\Entorno de Programación\repo tp final
ENTRYPOINT ["./Menu.sh"]

