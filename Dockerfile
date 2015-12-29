FROM ubuntu:14.04
MAINTAINER kiwenlau@gmail.com

# Install wget
RUN apt-get install -y wget

# Install docker
RUN wget -qO- https://get.docker.com/ | sh

# Install wrapdocker for using Docker-in-Docker
# https://raw.githubusercontent.com/jpetazzo/dind/master/wrapdocker
ADD wrapdocker /usr/local/bin/
RUN chmod +x /usr/local/bin/wrapdocker

VOLUME /var/lib/docker
CMD ["wrapdocker"]

# docker build -t kiwenlau/ubuntu-docker .