
## Docker Build
* Create a docker image from *Dockerfile*
```
docker build -t somename-image .
```
* Check with *docker image ls*

## Docker run
* Create a docker container from image
```
docker run -d --rm -it --name somename-container -p 80:80 somename-image
```
* Check with *docker ps*

## Docker exec
* Execute docker container
```
docker exec -it somename-container /bin/bash
```

## Access mariadb
```
docker exec -it some-mariadb bash
```

```
mysql -u root -p

```
