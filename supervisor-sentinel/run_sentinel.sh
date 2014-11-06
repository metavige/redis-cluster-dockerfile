#!/bin/bash

REDIS_HOST=$(hostname --all-ip-addresses | awk '{print $1}')
docker run -d -p 26379:26379 -e REDIS_HOST=$REDIS_HOST --name supervisor-redis-sentinel nebula/supervisor-redis-sentinel

