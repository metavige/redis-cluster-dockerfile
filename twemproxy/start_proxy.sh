#!/bin/bash

TWEMPROXY_PORT=6000
TWEMPROXY_STATS_PORT=6001
# ETCD_HOST=$(/sbin/ifconfig eth0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}'):4001
ETCD_HOST=$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' etcd):4001

etcdctl set /services/twemproxy/port $TWEMPROXY_PORT
# docker rm -f redis-twemproxy

docker run -d --name=redis-twemproxy -p $TWEMPROXY_PORT:6000 -p $TWEMPROXY_STATS_PORT:6222 -e ETCD_HOST=$ETCD_HOST nebula/redis-twemproxy
# etcdctl set /services/twemproxy/host 127.0.0.1
