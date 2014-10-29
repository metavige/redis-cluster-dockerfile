cli:
	docker run -it --rm nebula/redis-base /bin/bash

runall:
	docker run -d -p 6379:6379 --name redis-standalone nebula/redis-standalone
	docker run -d -p 6380:6379 --link redis-standalone:redis --name redis-slave1 nebula/redis-slave
	docker run -d -p 6381:6379 --link redis-standalone:redis --name redis-slave2 nebula/redis-slave
	docker run -d -p 26379:26379 --link redis-standalone:redis --name redis-sentinel nebula/redis-sentinel

stopall:
	docker stop redis-sentinel redis-slave2 redis-slave1 redis-standalone

removeall:
	docker stop redis-sentinel redis-slave2 redis-slave1 redis-standalone