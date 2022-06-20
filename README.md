# doris
```
wget https://palo-cloud-repo-bd.bd.bcebos.com/baidu-doris-release/PALO-0.14.13.1-release-binary.tar.gz
```
## 编译FE
```
cd fe
docker build . -t nexus3.tineco.com/doris_fe:0.14.13.1
docker push nexus3.tineco.com/doris_fe:0.14.13.1
```
## 编译BE
```
cd be
docker build . -t nexus3.tineco.com/doris_be:0.14.13.1
docker push nexus3.tineco.com/doris_be:0.14.13.1
```
## 运行Doris集群
```
docker-compose up -d
```
### 使用Mysql客户端连接FE
```
ALTER SYSTEM ADD FOLLOWER  "fe02:9010";
ALTER SYSTEM ADD OBSERVER  "fe03:9010";
SHOW PROC '/frontends'

ALTER SYSTEM ADD BACKEND "be01:9050";
ALTER SYSTEM ADD BACKEND "be02:9050";
show proc '/backends';

```

## 运行Doris单点
```
docker-compose -f docker-compose-standalone.yml up -d
```
### 使用Mysql客户端连接FE
```
ALTER SYSTEM ADD BACKEND "be01:9050";
show proc '/backends';

```

