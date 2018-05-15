#!/bin/bash
sudo docker run --name yona -p=9000:9000 --privileged \
-e TZ=Asia/Seoul \
-v ${PWD}/app/data:/opt/yona/data \
--link yona-db:yona-db -d -t inlineno1/yona:1.9.1
