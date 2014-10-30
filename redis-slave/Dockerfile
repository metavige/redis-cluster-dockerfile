FROM nebula/redis-base

ADD start-slave.sh .
RUN chmod +x start-slave.sh

CMD ["sh", "./start-slave.sh"]

VOLUME ["/data"]
EXPOSE 6379
