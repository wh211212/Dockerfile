#!/bin/bash

# stop aniu/nginx container && delete container&images

containerid=`docker ps -a | grep aniu/nginx | awk '{print $1}'`

sudo docker stop $containerid

sudo docker rm $containerid

sudo docker rmi  aniu/nginx

# build nginx images
docker build -t aniu/nginx .
