#!/usr/bin/env bash

curl  https://pecl.php.net/get/redis-3.1.1.tgz -o /var/tmp/redis-3.1.1.tgz
cd /var/tmp
tar -zxf redis-3.1.1.tgz
cd redis-3.1.1
yum install php70-devel -y
phpize7
./configure
make && make install
cd /var/tmp/
rm -rf redis-3.1.1
