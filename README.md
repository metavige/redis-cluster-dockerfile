redis-cluster-dockerfile
========================

## Redis Base

### bulid 
`docker build -t nebula/redis-base .`
### test
`docker run -it --rm --name redis-cli nebula/redis-base /bin/bash`


## Redis Master

### pull from docker.io
`docker pull dockerfile/redis`

### run
`docker run -d  --name redis-master -p 6379:6379 dockerfile/redis`

## redis slave

### build
`docker build -t nebula/redis-slave .`

### run
`docker run -d --name redis-slave --link redis-master:redis -p 6380:6379 nebula/redis-slave`
