#!/bin/bash

# Build ubuntu-docker image
echo -e "\ndocker build -t kiwenlau/ubuntu-docker ."
docker build -t kiwenlau/ubuntu-docker .

echo -e "\n\ndocker run -it -d --privileged -v /var/lib/docker --name ubuntu-docker kiwenlau/ubuntu-docker"
docker rm -f ubuntu-docker > /dev/null
docker run -it -d --privileged -v /var/lib/docker --name ubuntu-docker kiwenlau/ubuntu-docker

echo -e "\n\ndocker exec -it ubuntu-docker bash"
docker exec -it ubuntu-docker bash