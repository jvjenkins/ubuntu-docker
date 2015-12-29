FROM ubuntu:14.04
MAINTAINER kiwenlau@gmail.com

RUN apt-get install -y wget

# Install Docker
RUN wget -qO- https://get.docker.com/ | sh

# Docker-in-Docker
# https://raw.githubusercontent.com/jpetazzo/dind/master/wrapdocker
# sed -i 's/exec bash/#exec bash/'
ADD wrapdocker /usr/local/bin/
RUN chmod +x /usr/local/bin/wrapdocker && chown root:root /usr/local/bin/wrapdocker
RUN printf '#!/bin/bash\nexit 0\n' > /sbin/apparmor_parser && chmod +x /sbin/apparmor_parser

# init script
ADD init.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/init.sh

CMD ["/usr/local/bin/init.sh"]

# docker build -t kiwenlau/ubuntu-docker:1.0 .