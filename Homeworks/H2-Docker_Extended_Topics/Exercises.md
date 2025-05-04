# Homework 2 - Docker Extended Topics

## Exercise 1

1. List all Docker networks

![](../../images/h2_e1-1.png)

2. Inspect the default `bridge` network

![](../../images/h2_e1-2.png)

3. Create a new bridge user-defined network

![](../../images/h2_e1-3.png)

4. Run a container attached to it and inspect its IP

![](../../images/h2_e1-4.png)
![](../../images/h2_e1-5.png)


## Exercise 2

1. Run two Nginx containers which have to be connected to that user-defined network created
in Exercise 1

![](../../images/h2_e2-1.png)

2. Use ping within both containers to test communication each other by container name

![](../../images/h2_e2-2.png)

## Exercise 3

1. Create a Docker volume: `mydata`

![](../../images/h2_e3-1.png)

2. Run a container using the volume

![](../../images/h2_e3-2.png)

3. Write a file inside `/data` from the container, then:

![](../../images/h2_e3-3.png)

  1. Stop the container.

  ![](../../images/h2_e3-4.png)

  2. Relaunch to verify persistence.

  ![](../../images/h2_e3-5.png)

## Exercise 4

1. Create a directory on your host

![](../../images/h2_e4-1.png)

2. Run a container with a bind mount

![](../../images/h2_e4-2.png)


3. Create a file in `/mnt` from the container and check the host

![](../../images/h2_e4-3.png)
![](../../images/h2_e4-4.png)

## Exercise 5

1. Create a file in a named volume

![](../../images/h2_e5-1.png)

2. Create a file using a bind mount

![](../../images/h2_e5-2.png)

3. Observe where data is stored on the host with `docker volume inspect` and `ls`

![](../../images/h2_e5-3.png)

## Exercise 6

1. Run an Ubuntu container with the necessary options to enable Docker in Docker (DinD)

![](../../images/h2_e6-1.png)

2. Exec into the container and run `docker version`

![](../../images/h2_e6-2.png)

## Exercise 7

1. Run a container with memory and CPU limits:
    - Memory = 256m
    - CPU = 0.5

![](../../images/h2_e7-1.png)

2. Check resource usage stats

![](../../images/h2_e7-2.png)

3. Check disk usage (docker system)

![](../../images/h2_e7-3.png)

## Exercise 8

1. Run a container with policy `--restart on-failure`

![](../../images/h2_e8-1.png)

2. Kill the container and observe how it restarts

![](../../images/h2_e8-2.png)

3. Try with the policy `--restart unless-stopped`

![](../../images/h2_e8-3.png)

4. Reboot the system and see what happens

![](../../images/h2_e8-4.png)

## Exercise 9

1. Create a network `dbnet`
2. Create a volume `dbdata`
3. Run a MariaDB container with the following requirements:
    - Attached to volume `dbdata`
    - Attached to network `dbnet`
    - Do NOT expose ANY port

![](../../images/h2_e10-1.png)

## Exercise 10

Run a PHPMyAdmin container with the following requirements:

1. Attached to network `dbnet` (created in Exercise 9)
2. Use a bind mount to persist the web app configuration
3. Linked to the previous MariaDB container (created in Exercise 9)

![](../../images/h2_e10-2.png)

4. Open a browser to display the PHPMyAdmin Login Form.

![](../../images/h2_e10-3.png)

5. Login with the DB credentials

![](../../images/h2_e10-4.png)
