FROM nebula/redis-base

ADD start-sentinel.sh .
RUN chmod +x start-sentinel.sh

CMD ["start-sentinel.sh"]

EXPOSE 26379
