# alpine-mysql

[![Docker Stars](https://img.shields.io/docker/stars/inikolaev/alpine-mysql.svg)][hub]
[![Docker Pulls](https://img.shields.io/docker/pulls/inikolaev/alpine-mysql.svg)][hub]

[hub]: https://hub.docker.com/r/inikolaev/alpine-mysql/

## Using this image
Create a volume which will keep your database files:
```
docker volume create --name mysql 
```

Run a container and attach the volume:
```
docker run -d -p 3306:3306 -v mysql:/var/lib/mysql --name mysql inikolaev/alpine-mysql
```

You may skip creating a volume then a new volume will be created automatically (please note that a new volume will be created for each new container), but I prefer to create volume myself and give it a name so I could refer to it when creating container for a newer version.
