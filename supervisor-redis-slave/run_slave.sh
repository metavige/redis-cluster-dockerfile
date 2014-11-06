#!/bin/bash

REDIS_HOST="$(hostname --all-ip-addresses | awk '{print $1}')"
docker run -d -p 6380:6379 -e REDIS_MASTER="$REDIS_HOST 6379" --name supervisor-redis-slave1 nebula/supervisor-redis-slave
docker run -d -p 6381:6379 -e REDIS_MASTER="$REDIS_HOST 6379" --name supervisor-redis-slave2 nebula/supervisor-redis-slave
