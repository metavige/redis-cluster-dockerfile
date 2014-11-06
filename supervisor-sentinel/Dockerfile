FROM nebula/redis-base

ADD supervisor.conf /etc/supervisor/conf.d/sentinel.conf
ADD sentinel.conf /etc/redis/sentinel.conf
ADD start-sentinel.sh /root/bin/start-sentinel.sh
RUN chmod +x /root/bin/start-sentinel.sh

RUN sed -i 's/^\(bind .*\)$/# \1/' /etc/redis/redis.conf && \
  sed -i 's/^\(daemonize .*\)$/# \1/' /etc/redis/redis.conf && \
  sed -i 's/^\(dir .*\)$/# \1\ndir \/data/' /etc/redis/redis.conf && \
  sed -i 's/^\(logfile .*\)$/# \1/' /etc/redis/redis.conf

CMD ["/root/bin/start-sentinel.sh"]

EXPOSE 26379
