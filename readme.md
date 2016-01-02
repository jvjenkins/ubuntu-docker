#运行步骤

1. 下载镜像

```
sudo docker pull kiwenlau/ubuntu-docker
```

2. 运行容器

```
sudo docker run -it -d --privileged -v /var/lib/docker --name ubuntu-docker kiwenlau/ubuntu-docker
```

3. 进入容器

```
sudo docker exec -it ubuntu-docker bash
```

4. 测试容器

```
sudo docker run ubuntu:14.04 /bin/echo 'Hello world'
```

输出

```
Unable to find image 'ubuntu:14.04' locally
14.04: Pulling from library/ubuntu
0bf056161913: Pull complete 
1796d1c62d0c: Pull complete 
e24428725dd6: Pull complete 
89d5d8e8bafb: Pull complete 
Digest: sha256:d3b59c1d15c3cfb58d9f2eaab8a232f21fc670c67c11f582bc48fb32df17f3b3
Status: Downloaded newer image for ubuntu:14.04
Hello world
```