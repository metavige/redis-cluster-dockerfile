#!/bin/bash

sed -i "s/{REDIS_HOST}/$REDIS_PORT_6379_TCP_ADDR/g" /etc/nutcracker/nutcracker.yml
sed -i "s/{REDIS_PORT}/$REDIS_PORT_6379_TCP_PORT/g" /etc/nutcracker/nutcracker.yml

nutcracker -d -c /etc/nutcracker/nutcracker.yml -o /var/log/nutcracker.log
