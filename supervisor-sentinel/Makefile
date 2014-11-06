build:
	docker build --rm -t nebula/supervisor-redis-sentinel .

test:
	./test_sentinel.sh

run:
	./run_sentinel.sh

remove:
	docker rm -f supervisor-redis-sentinel
