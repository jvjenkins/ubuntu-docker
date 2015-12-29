#!/bin/bash

docker rm -f ubuntu-docker &> /dev/null

docker build -t kiwenlau/ubuntu-docker .

echo "docker run"
docker run -d --privileged -v /var/lib/docker --name ubuntu-docker kiwenlau/ubuntu-docker > /dev/null

echo "docker logs ubuntu-docker"
docker logs ubuntu-docker

#docker exec -it ubuntu-docker bash