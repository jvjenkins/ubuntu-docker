FROM ubuntu:14.04
MAINTAINER kiwenlau@gmail.com

# Install wget
RUN apt-get install -y wget

# Install docker
RUN wget -qO- https://get.docker.com/ | sh

VOLUME /var/lib/docker
CMD ["docker", "daemon", "-D"]

# docker build -t kiwenlau/ubuntu-docker .