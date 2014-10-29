build:
	docker build --rm -t nebula/redis-sentinel .

run:
	docker run -d -p 26379:26379 --link redis-standalone:redis --name redis-sentinel nebula/redis-sentinel

stop:
	docker stop redis-sentinel

remove:
	docker rm redis-sentinel
