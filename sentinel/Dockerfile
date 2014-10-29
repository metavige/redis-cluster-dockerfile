FROM nebula/redis-base

RUN sed -i 's/127.0.0.1/'"\$REDIS_PORT_6379_TCP_ADDR"'/g' /etc/redis/sentinel.conf && \
    cat /etc/redis/sentinel.conf | grep mymaster

CMD ["redis-sentinel", "/etc/redis/sentinel.conf"]

EXPOSE 26379
