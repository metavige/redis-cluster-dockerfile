#!/bin/bash

# redis-server --slaveof $REDIS_PORT_6379_TCP_ADDR $REDIS_PORT_6379_TCP_PORT

# Run docker run with --link redis-master:redis
if [ -n "${REDIS_MASTER}:+x}" ]; then
  mv /etc/supervisor/conf.d/redis-slave.conf /tmp/redis-slave.conf
  sed -e "s/127.0.0.1 6379/${REDIS_MASTER}/g" /tmp/redis-slave.conf > /etc/supervisor/conf.d/redis-slave.conf

fi

/root/bin/run.sh 
