FROM nebula/redis-base

ADD supervisord.conf /etc/supervisor/conf.d/redis-slave.conf
ADD redis.conf /etc/redis/redis.conf
ADD start-slave.sh /root/bin/start-slave.sh
RUN chmod +x /root/bin/start-slave.sh

VOLUME ["/data"]

EXPOSE 6379

CMD ["sh", "/root/bin/start-slave.sh"]
