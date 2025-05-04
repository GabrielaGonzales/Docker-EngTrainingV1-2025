#!/bin/bash

# Exercise 1

docker network ls
docker network inspect bridge
docker network create --driver bridge my_network
docker run -d --network my_network --name test-container nginx
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' test_container

# Exercise 2

docker run -d --name alpine1 --network my_bridge_network alpine sleep 3600
docker run -d --name alpine2 --network my_bridge_network alpine sleep 3600
docker exec alpine1 ping -c 4 alpine2
docker exec alpine2 ping -c 4 alpine1

# Exercise 3

docker volume create mydata
docker run -d --name container_with_volume -v mydata:/data nginx
docker exec container_with_volume bash -c "echo 'Hello World' > /data/hello.txt"
docker stop container_with_volume
docker start container_with_volume
docker exec container_with_volume cat /data/hello.txt

# Exercise 4

mkdir ~/host_data
docker run -d --name container_with_bind_mount -v ~/host_data:/mnt nginx
docker exec container_with_bind_mount sh -c "echo 'File created inside container' > /mnt/container_file.txt"
cat ~/host_data/container_file.txt

# Exercise 5

docker run --rm -it --rm -v mydata:/data alpine sh
echo "Hello from volume" > /data/volume_file.txt
exit
docker run -it --rm -v ~/host_data:/mnt alpine sh
echo "Hello from bind mount" > /mnt/bind_filie.txt
exit
docker volume inspect mydata
sudo ls /var/lib/docker/volumes/mydata/_data
ls ~/host_data/

# Exercise 6

docker run --privileged -d --name dind_test docker:dind
docker exec dind_test docker version

# Exercise 7

docker run -d --name resource_limited_container --memory=256m --cpus=0.5 nginx
docker stats resource_limited_container --no-stream
docker system df

# Exercise 8

docker run -d --name test-onfailure --restart on-failure alpine sh -c "exit 1"
docker ps -a
docker inspect --format='{{.RestartCount}}' test-onfailure
docker kill test-onfailure
docker ps -a
docker run --name test-ustop --restart unless-stopped -d traefik
docker ps
sudo systemctl restart docker.socket
docker ps
docker stop test-ustop
docker ps -a
sudo systemctl restart docker.socket
docker ps -a

# Exercise 9

docker network create dbnet
docker volume create dbdata
docker run -dit --name mariadb \
  --network dbnet \
  -v dbdata:/var/lib/mysql \
  -e MYSQL_ROOT_PASSWORD=root \
  -e MYSQL_DATABASE=appdb \
  -e MYSQL_USER=user \
  -e MYSQL_PASSWORD=pass \
  mariadb:latest

# Exercise 10

mkdir ~/phpmyadmin-config
docker run -dit --name phpmyadmin \
  --network dbnet \
  -v ~/phpmyadmin/config:/etc/phpmyadmin-config \
  -e PMA_HOST=mariadb \
  -p 8080:80 \
  phpmyadmin/phpmyadmin

