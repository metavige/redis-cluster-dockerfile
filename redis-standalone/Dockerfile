FROM nebula/redis-base

ADD redis.conf /etc/redis/redis.conf
#ADD supervisor.conf /etc/supervisor/conf.d/redis.conf

VOLUME ["/data"]

EXPOSE 6379 
#EXPOSE 22

# CMD ["/root/bin/run.sh"]
CMD ["redis-server"]
#
# build:  docker build -t nebula/redis-standalone .
# run:    docker run -d nebula/redis-standalone redis-standalone
#
