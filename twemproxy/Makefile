build:
	docker build --rm -t nebula/redis-twemproxy .

run:
	TWEMPROXY_PORT=6100
	TWEMPROXY_STATS_PORT=6100
	etcdctl set /services/twemproxy/port ${TWEMPROXY_PORT}
	docker run --name=redis-twemproxy --rm -p ${TWEMPROXY_PORT}:6000 -p ${TWEMPROXY_STATS_PORT}:6001 -e ETCD_HOST=127.0.0.1:4001 nebula/redis-twemproxy
	etcdctl set /services/twemproxy/host 127.0.0.1