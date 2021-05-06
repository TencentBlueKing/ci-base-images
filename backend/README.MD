# bkci 依赖的backend基础镜像
当需要在docker内启动bkci服务时，可以使用如下方式启动backend
1. 将bkci.tar.gz(release包)解压至`/data/docker/bkci/ci`目录
2. 执行如下命令
```shell
cd /data/docker/bkci
docker run -d --hostname microservice --name microservice bkci/backend
```
