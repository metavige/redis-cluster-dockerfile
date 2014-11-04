FROM nebula/redis-base

ADD sentinel.conf /etc/redis/sentinel.conf
ADD start-sentinel.sh /root/bin/start-sentinel.sh
RUN chmod +x /root/bin/start-sentinel.sh

CMD ["/root/bin/start-sentinel.sh"]

EXPOSE 26379
