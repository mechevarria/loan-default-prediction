#!/usr/bin/env bash
rootpass=mysqlroot
user=loan
userpass=loanpass

docker cp data/ mysql:/tmp/data
docker exec mysql bash -c "cd /tmp/data ; mysql -uroot -p${rootpass} --protocol=tcp < infile.sql"
docker exec mysql bash -c "cd /tmp/data ; mysql -u${user} -p${userpass} --protocol=tcp --local-infile=1 < data.sql"