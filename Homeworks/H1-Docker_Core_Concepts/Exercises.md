# Homework 1 - Docker Core Concepts

## Exercises

### Exercise 1

1. Install Docker Engine using the official Docker APT repository

![install docker engine](../../images/h1_e1-1.png)

2. Enable and start the Docker service

![enable docker service](../../images/h1_e1-2.png)

3. Print the info of the Docker Client and Server

![print info docker](../../images/h1_e1-3.png)

### Exercise 2

1. Search for the official repos of Ubuntu, Alpine, and Nginx

![search official repos](../../images/h1_e2-1.png)

2. Run an Nginx container using the image from the official repo

![run nginx container](../../images/h1_e2-2.png)

### Exercise 3

1. Check Docker daemon status

![docker daemon status](../../images/h1_e3-1.png)

2. Stop the Docker daemon

![stop docker daemon](../../images/h1_e3-2.png)

3. Run a container while it's stopped

![run container stopped](../../images/h1_e3-3.png)

4. Restart the Docker daemon and run a container again

![restart docker daemon](../../images/h1_e3-4.png)

### Exercise 4

1. Run an Ubuntu container interactively

![run ubuntu container](../../images/h1_e4-1.png)

2. Use `apt update && apt install curl` inside the container

![commands inside](../../images/h1_e4-2.png)

3. Exit the container

![exit container](../../images/h1_e4-3.png)

### Exercise 5

1. List running container

![list container](../../images/h1_e5-1.png)

2. List all containers (including exited)

![list all containers](../../images/h1_e5-2.png)

### Exercise 6

1. Run a container in the background

![run container background](../../images/h1_e6-1.png)

2. Then Pause it

![pause container](../../images/h1_e6-2.png)

3. Unpause it

![unpause container](../../images/h1_e6-3.png)

4. Stop it

![stop container](../../images/h1_e6-4.png)

5. Restart it

![restart container](../../images/h1_e6-5.png)

6. Kill it

![kill container](../../images/h1_e6-6.png)

### Exercise 7

- Remove a running container

![remove running container](../../images/h1_e7-1.png)

### Exercise 8

1. Pull the `alpine` and `ubuntu` images

![pull images](../../images/h1_e8-1.png)

2. List all the container images in your Docker Host

![list images](../../images/h1_e8-2.png)

### Exercise 9

1. Run `alpine` and execute `echo "hello from alpine"`

![alpine execution](../../images/h1_e9-1.png)

2. Run `busybox` and execute `uname -a`

![busybox execution](../../images/h1_e9-2.png)

3. List all the containers

![list containers](../../images/h1_e9-3.png)

### Exercise 10

1. Remove all stopped containers

![remove stopped containers](../../images/h1_e10-1.png)

2. Remove unused images

I use the `-a` flag because without it, the command doesn't remove the images

![remove unused images](../../images/h1_e10-2.png)

3. Inspect Docker disk usage

![docker disk usage](../../images/h1_e10-3.png)

