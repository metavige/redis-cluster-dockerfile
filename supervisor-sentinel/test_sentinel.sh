#!/bin/bash

REDIS_HOST=$(hostname --all-ip-addresses | awk '{print $1}')
docker run -it --rm -e REDIS_HOST=$REDIS_HOST nebula/supervisor-redis-sentinel /bin/bash

