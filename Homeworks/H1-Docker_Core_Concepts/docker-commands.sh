#!/bin/bash

# Exercise 1

sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo usermod -aG docker $USER
sudo apt-get update
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker
docker info

# Exercise 2

docker search ubuntu --filter is-official=true
docker search alpine --filter is-official=true
docker search nginx --filter is-official=true
docker run -d nginx
docker ps

# Exercise 3

sudo systemctl status docker
sudo systemctl stop docker
sudo systemctl stop docker.socket
sudo systemctl status docker
docker run -d nginx
sudo systemctl restart docker
docker run -d nginx
docker ps

# Exercise 4

docker run --rm -it ubuntu
apt update && apt install curl
exit

# Exercise 5

docker container list
docker ps
docker container list -a
docker ps -a

# Exercise 6

docker run -d nginx
docker ps
docker pause wonderful_bhabha
docker ps
docker unpause wonderful_bhabha
docker ps
docker stop wonderful_bhabha
docker ps -a
docker restart wonderful_bhabha
docker ps
docker kill wonderful_bhabha
docker ps -a

# Exercise 7

docker run -d nginx
docker ps
docker rm -f 761e839a1c15
docker ps -a

# Exercise 8

docker pull alpine
docker pull ubuntu
docker images
docker image list

# Exercise 9

docker run alpine echo "hello from alpine"
docker run busybox uname -a
docker ps -a

# Exercise 10

docker container prune
docker ps -a
docker images
docker image prune -a
docker images
docker system df
