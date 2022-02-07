# Inception

* This is a école 42 project that aims to broaden our knowledge in system adminstration using docker.

## Images
Three images were virtualized for this project

### Nginx
- A reverse proxy

### Wordpress
- PHP website

### Mariadb
- Database

## How it works
- To work with those 3 images, a docker-compose file has been used. Using it, make easier to deploy the containers. All necessary configurations, such as open ports, network and volumes are on docker-compose.yml
- There is only one port open, 443 (HTTPS)

## How to use
```
make
```
* Access https://localhost
- *Some changes may be necessary in Makefile*
- *This projects requires docker and docker-compose previous installed*

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

## Execute docker container
```
docker exec -it somename-container /bin/bash
```

## How to dump mysql database in docker
```
docker exec mariadb /usr/bin/mysqldump -u root --password=12345 inceptiondb > databse.sql
```
