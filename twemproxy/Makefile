build:
	docker build --rm -t nebula/redis-twemproxy .

run:
	docker run -d -p 22120:22120 -p 22222:22222 --link redis-standalone:redis --name redis-twemproxy nebula/redis-twemproxy

rebuild: 
	docker rmi nebula/redis-twemproxy
	docker build --rm -t nebula/redis-twemproxy .
