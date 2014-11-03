#!/bin/bash

# redis-server --slaveof $REDIS_PORT_6379_TCP_ADDR $REDIS_PORT_6379_TCP_PORT

# Run docker run with --link redis-master:redis
if [ -n "${REDIS_PORT_6379_TCP_ADDR:+x}" ]; then
  mv /etc/supervisor/supervisord.conf /tmp/supervisord.conf
  sed -e "/confd -node/s/127.0.0.1/${REDIS_PORT_6379_TCP_ADDR}/" /tmp/supervisord.conf > /etc/supervisor/supervisord.conf
fi

/root/bin/run.sh 