FROM nebula/redis-base

ADD start-slave.sh /root/start-slave.sh
RUN ls -l -a . 
RUN chmod +x ./start-slave.sh

CMD ["sh", "./start-slave.sh"]

VOLUME ["/data"]
EXPOSE 6379
