
## Reference

- [Twitter Twemproxy](http://github.com/twitter/twemproxy)
- [Twemproxy on Docker](https://github.com/jgoodall/docker-twemproxy)

## Pre-Request

- 需要先設定好 ETCD_HOST
- ETCD 中要先設定好以下 Key
    - `/services/redis/{name}` : `host:ip`，Redis Master 的位置，用來產生 twemproxy.yaml，可以多台
    - `/services/sentinel/host`
    - `/services/sentinel/port`
- ETCD 如果使用 docker 執行，需要設定 `-addr` 以及 `-peer-addr` 參數。用預設的 [coreos/etcd](https://registry.hub.docker.com/u/coreos/etcd/) 執行會發生 `confd ERROR 501: All the given peers are not reachable`

## Docker run

需要設定 `-e ETCD_HOST=$ETCD_HOST`，讓 run.sh 來取得後，變更 supervisor.conf 的設定再執行


## Post-Build

- 建立完之後，在 ETCD 註冊 `/services/twemproxy/port`