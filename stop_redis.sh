#!/bin/bash

docker rm -f sentinel_0
# docker rm -f sentinel_1
# docker rm -f sentinel_2
docker rm -f supervisor-redis-slave1 supervisor-redis-slave2 redis-standalone
