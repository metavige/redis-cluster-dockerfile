cli:
	docker run -it --rm nebula/redis-base /bin/bash

run:
	./start_redis.sh

stopall:
	docker stop redis-sentinel redis-slave2 redis-slave1 redis-standalone

removeall:
	docker stop redis-sentinel redis-slave2 redis-slave1 redis-standalone
