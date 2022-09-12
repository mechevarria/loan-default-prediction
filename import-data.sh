#!/usr/bin/env bash
rootpass=mysqlroot
user=loan
userpass=loanpass

# enable local infile commands
mysql -uroot -p${rootpass} --protocol=tcp < infile.sql

mysql -u${user} -p${userpass} --protocol=tcp --local-infile=1 < data.sql