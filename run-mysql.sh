#!/usr/bin/env bash

name=mysql
rootpass=mysqlroot
user=loan
userpass=loanpass

if [[ ! -f "volume" ]]; then
    echo "creating mysql data volume"
    mkdir volume
fi

if [ $( docker ps -a | grep ${name} | wc -l ) -gt 0 ]; then
    echo "${name} exists"
    docker start ${name}
else
    echo "${name} does not exist"
    docker run -d \
    --name ${name} \
    -p 3306:3306 \
    -v ${PWD}/volume:/var/lib/mysql \
    -e MYSQL_DATABASE=loan \
    -e MYSQL_ROOT_PASSWORD=${rootpass} \
    -e MYSQL_USER=${user} \
    -e MYSQL_PASSWORD=${userpass} \
    mysql
fi
