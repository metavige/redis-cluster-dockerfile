#!/bin/bash

sed -i "s/127.0.0.1/$REDIS_PORT_6379_TCP_ADDR/g" /etc/redis/sentinel.conf

redis-sentinel /etc/redis/sentinel.conf