FROM nebula/redis-base

ADD sentinel.conf /etc/redis/sentinel.conf
ADD start-sentinel.sh /root/start-sentinel.sh
RUN chmod +x ./start-sentinel.sh

CMD ["./start-sentinel.sh"]

EXPOSE 26379
