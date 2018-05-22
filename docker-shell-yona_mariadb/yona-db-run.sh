#!/bin/bash
sudo docker run --name yona-db --privileged \
-v ${PWD}/db/conf:/etc/mysql/conf.d \
-v ${PWD}/db/data:/var/lib/mysql \
-p=3306:3306 \
-e TZ=Asia/Seoul \
-e MYSQL_DATABASE=yona -e MYSQL_USER=yona -e MYSQL_PASSWORD=yona -e MYSQL_ROOT_PASSWORD=maria -d mariadb:10.2.14
