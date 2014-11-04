#!/bin/sh

# Run docker run with -e ETCD_HOST=<ip>:<port>
if [ -n "${ETCD_HOST:+x}" ]; then
  mv /etc/supervisor/conf.d/twemproxy.conf /tmp/twemproxy.conf
  sed -e "/confd -node/s/127.0.0.1:4001/${ETCD_HOST}/" /tmp/twemproxy.conf > /etc/supervisor/conf.d/twemproxy.conf
fi

# for debugging
cat /etc/supervisor/conf.d/twemproxy.conf

# /usr/bin/supervisord -n -c /etc/supervisor/supervisord.conf
/root/bin/run.sh
