FROM nebula/ubuntu-base

RUN apt-get update && \
    apt-get install redis-server -y && \
    apt-get remove -y --purge build-essential software-properties-common && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 

#
# build:  docker build -t nebula/redis-base .
# run:    docker run -i -t nebula/redis-base /bin/bash
#  (cli)  docker run -link=redis0:redis -i -t -name=redis-cli nebula/redis-base /bin/bash
#
