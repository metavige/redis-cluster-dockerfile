FROM nebula/redis-base
RUN echo "redis-server --slaveof \$REDIS_PORT_6379_TCP_ADDR \$REDIS_PORT_6379_TCP_PORT" > start-slave.sh && chmod +x start-slave.sh
RUN cat ./start-slave.sh
CMD ["sh", "./start-slave.sh"]

VOLUME ["/data"]
EXPOSE 6379
