FROM nebula/redis-base

ADD redis.conf /etc/redis/redis.conf

CMD ["redis-server"]

VOLUME ["/data"]
EXPOSE 6379

#
# build:  docker build -t nebula/redis-standalone .
# run:    docker run -d nebula/redis-standalone redis-standalone
#
