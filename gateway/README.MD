# bkci 依赖的gateway基础镜像
当需要在docker内启动bkci服务时，可以使用如下方式启动gateway
1. 将bkci.tar.gz(release包)解压至`/data/docker/ci`目录
2. 执行如下命令
```shell
cd /data/docker/ci
docker run -d --hostname gw --name gw -v "$(pwd)/ci/gateway/core/:/usr/local/openresty/nginx/conf" -v "$(pwd)/ci/frontend/:/data/docker/bkci/ci/frontend" -p 80:80 bkci/gw
```
