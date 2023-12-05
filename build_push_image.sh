#! /bin/bash

#Membuat docker image
docker build -t item-app:v1 .

#melihat daftar image
docker images

#mengunggah image ke Docker hub
echo $PASSWORD_DOCKER_HUB | docker login -u yunandar711 --password-stdin
docker tag item-app:v1 yunandar711/item-app:v1
docker push yunandar711/item-app:v1
