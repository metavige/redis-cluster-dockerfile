build:
	docker build --rm -t nebula/redis-slave .

run:
	docker run --rm -d -p 6380:6379 --link redis-standalone:redis --name redis-slave1 nebula/redis-slave
	docker run --rm -d -p 6381:6379 --link redis-standalone:redis --name redis-slave2 nebula/redis-slave

