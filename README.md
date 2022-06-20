# doris
```
wget https://mirrors.tuna.tsinghua.edu.cn/apache/doris/1.0/1.0.0-incubating/apache-doris-1.0.0-incubating-bin.tar.gz
```
## 编译FE
```
cd fe
docker build . -t mooncakexyb/doris_fe:1.0.0
docker push mooncakexyb/doris_fe:1.0.0
```
## 编译BE
```
cd be
docker build . -t mooncakexyb/doris_be:1.0.0
docker push mooncakexyb/doris_be:1.0.0
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
docker-compose up -d
```
### 使用Mysql客户端连接FE
```
ALTER SYSTEM ADD BACKEND "be01:9050";
show proc '/backends';

```

