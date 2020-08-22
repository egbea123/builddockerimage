#!/bin/bash

# build image ⇒ docker build -t [image name]:[tag] .
docker build -t nginx_server:latest .

#DIsplay the build images
docker images

# run container
docker run -d -p 8081:80 nginx_server

#Display  runing container 
docker ps

#Verify  access to Nginx 
curl localhost:8081

