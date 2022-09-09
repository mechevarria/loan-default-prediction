#!/usr/bin/env bash

name=mysql

if [ $( docker ps -a | grep ${name} | wc -l ) -gt 0 ]; then
    echo "${name} exists"
    docker start ${name}
else
    echo "${name} does not exist"
    docker run -d \
    --name ${name} \
    -p 3306:3306 \
    -v ${PWD}/mysql/data:/var/lib/mysql \
    -e MYSQL_ROOT_PASSWORD=mysqlroot \
    -e MYSQL_USER=loan \
    -e MYSQL_PASSWORD=loanpass \
    mysql
fi
