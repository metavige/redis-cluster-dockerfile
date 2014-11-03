FROM nebula/redis-base

ADD redis.conf /etc/redis/redis.conf
ADD supervisord.conf /etc/supervisor/supervisord.conf

# CMD ["redis-server"]

VOLUME ["/data"]

EXPOSE 6379
EXPOSE 22

CMD ["/root/bin/run.sh"]
#
# build:  docker build -t nebula/redis-standalone .
# run:    docker run -d nebula/redis-standalone redis-standalone
#
