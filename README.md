# Inception

* This is a école 42 project that aims to broaden out knowledge in system adminstration using docker.

* It was made in a virtual machine

## Images
Three images were virtualized for this project

### Nginx
- A reverse proxy

### Wordpress
- Web app

### Mariadb
- Database

## How it works
- To work with those 3 images, a docker-compose file has been used. Using it, make easier to deploy the containers. All configs, volumes and network were created in docker-compose file
- There is only one port open, 443

## How to use
- To use in your machine, first change all *maraurel* occurences in Makefile to your VM login name. Than run:

```
make
```

## Access database
```
docker exec -it mariadb /bin/bash
```

```
mysql -u root -p

```

- Password: 12345

```
USE inceptiondb;
```

### Commands
- To stop containers

```
make stop
```

- Stop and clean volumes

```
make clean
```

- Stop and clean volumes, images, containers and network

```
make fclean
```


## Extras

### Docker Build
* Create a docker image from *Dockerfile*
```
docker build -t somename-image .
```
* Check with *docker image ls*

### Docker run
* Create a docker container from image
```
docker run -d --rm -it --name somename-container -p 80:80 somename-image
```
* Check with *docker ps*

### Docker exec
* Execute docker container
```
docker exec -it somename-container /bin/bash
```

### Dump mysql database in docker
```
docker exec mariadb /usr/bin/mysqldump -u root --password=12345 inceptiondb > databse.sql
```