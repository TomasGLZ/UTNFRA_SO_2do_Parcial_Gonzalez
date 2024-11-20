#!/bin/bash
#modificar el archivo index.html
#
cd <Path-Repo>/202406/docker/
vim index.html

#Crear un Dockerfile para generar la imagen 



FROM nginx:latest


COPY index.html /usr/share/nginx/html/index.html


EXPOSE 80

#Construir la imagen de Docker 
#
 docker build -t web1-<Tu-Apellido> .

#inicio sesion en Docker Hub

docker login

#etiquete la imagen 
#
docker tag web1-<Tu-Apellido> <Tu-Usuario-DockerHub>/web1-<Tu-Apellido>

#subir la imagen al docker Hub
#
docker push <Tu-Usuario-DockerHub>/web1-<Tu-Apellido>

#Crear el archivo run.sh
#
#
vim run.sh
#Hacer que run.sh se pueda ejecutar
chmod +x run.sh

./run.sh



