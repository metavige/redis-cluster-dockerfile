#!/bin/bash

# This is for Redis Test, It's not for production....
REDIS_NAME="redis"
REDIS_MASTER=6379
REDIS_SLAVE1=6380
REDIS_SLAVE2=6381
SENTINEL=26379

# Remove Old Container first
docker rm -f "$REDIS_NAME-sentinel" "$REDIS_NAME-slave1" "$REDIS_NAME-slave2" "$REDIS_NAME-standalone"

# Create Redis Master
docker run -d -p $REDIS_MASTER:6379 --name "$REDIS_NAME-standalone" nebula/redis-standalone

# Create Slave1, 2
docker run -d -p $REDIS_SLAVE1:6379 --link "$REDIS_NAME-standalone:redis" --name "$REDIS_NAME-slave1" nebula/redis-slave
docker run -d -p $REDIS_SLAVE2:6379 --link "$REDIS_NAME-standalone:redis" --name "$REDIS_NAME-slave2" nebula/redis-slave

# Sentinel
docker run -d -p 26379:26379 --link "$REDIS_NAME-standalone":redis --name "$REDIS_NAME-sentinel" nebula/redis-sentinel
