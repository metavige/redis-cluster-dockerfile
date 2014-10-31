#!/bin/bash

RMIP=$(/sbin/ifconfig eth0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}')
echo $RMIP
docker run -d -p 6380:6379 -e REDIS_MASTER=$RMIP:6379 nebula/redis-slave
docker run -d -p 6381:6379 -e REDIS_MASTER=$RMIP:6379 nebula/redis-slave

