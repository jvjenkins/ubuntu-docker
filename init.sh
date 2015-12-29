#!/bin/bash

# docker-in-docker
/usr/local/bin/wrapdocker 2>/tmp/docker-daemon.log
docker version >/dev/null
if [ $? -ne 0 ];then
  sleep 10
  docker version >/dev/null || (echo "docker daemon failed to spawn."; exit 1)
fi
