#!/bin/bash

TWEMPROXY_PORT=6100
TWEMPROXY_STATS_PORT=6100
ETCD_HOST=127.0.0.1:4001

etcdctl set /services/twemproxy/port $TWEMPROXY_PORT
docker run --name=redis-twemproxy --rm -p $TWEMPROXY_PORT:6000 -p $TWEMPROXY_STATS_PORT:6001 -e ETCD_HOST=$ETCD_HOST nebula/redis-twemproxy
etcdctl set /services/twemproxy/host 127.0.0.1