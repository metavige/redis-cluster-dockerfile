#!/bin/bash

if [ -n "${REDIS_HOST}:+x}" ]; then
  cp /etc/redis/sentinel.conf /tmp/sentinel.conf
  sed "s/127.0.0.1/$REDIS_HOST/g" /tmp/sentinel.conf > /etc/redis/sentinel.conf

  sed -i "s/127.0.0.1/$REDIS_HOST/g" /etc/supervisor/conf.d/sentinel.conf
fi

# redis-sentinel /etc/redis/sentinel.conf

/root/bin/run.sh # run supervisord
