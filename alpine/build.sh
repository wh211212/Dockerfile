#!/bin/bash

# stop aniu/alpine container && delete container&images

containerid=`docker ps -a | grep aniu/alpine | awk '{print $1}'`

sudo docker stop $containerid

sudo docker rm $containerid

sudo docker rmi  aniu/alpine
