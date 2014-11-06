#!/bin/bash

DOCKER_IP=$(hostname --all-ip-addresses | awk '{print $1}')
#DOCKER_IP=$(ifconfig docker0 | grep 'inet addr:' | cut -d: -f2  | awk '{ print $1}')
echo "Docker IP: $DOCKER_IP"

# create redis master
cd ~/docker/redis/redis-standalone && make run

# create redis slave
cd ~/docker/redis/supervisor-redis-slave && make run

# get ip
#get master ip
REDIS_0_IP=$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' redis-standalone)
REDIS_1_IP=$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' supervisor-redis-slave1)
REDIS_2_IP=$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' supervisor-redis-slave2)

echo "REDIS_0_IP : $REDIS_0_IP"
echo "REDIS_1_IP : $REDIS_1_IP"
echo "REDIS_2_IP : $REDIS_2_IP"

# start up the sentinels
docker run --name sentinel_0 -d -p 26379:26379 joshula/redis-sentinel --sentinel announce-ip $DOCKER_IP --sentinel announce-port 26379
# docker run --name sentinel_1 -d -p 26378:26379 joshula/redis-sentinel --sentinel announce-ip $DOCKER_IP --sentinel announce-port 26378
# docker run --name sentinel_2 -d -p 26377:26379 joshula/redis-sentinel --sentinel announce-ip $DOCKER_IP --sentinel announce-port 26377

#get sentinel ips
SENTINEL_0_IP=$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' sentinel_0)
# SENTINEL_1_IP=$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' sentinel_1)
#SENTINEL_2_IP=$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' sentinel_2)

echo "SENTINEL_0_IP : $SENTINEL_0_IP"
#echo "SENTINEL_1_IP : $SENTINEL_1_IP"
#echo "SENTINEL_2_IP : $SENTINEL_2_IP"

#redis-cli -p 26379 sentinel remove mymaster
#redis-cli -p 26379 sentinel monitor mymaster $REDIS_0_IP 6379 1
#redis-cli -p 26379 sentinel set mymaster down-after-milliseconds 1000
#redis-cli -p 26379 sentinel set mymaster failover-timeout 1000
#redis-cli -p 26379 sentinel set mymaster parallel-syncs 1
