# bkci 依赖的rabbitmq基础镜像
当需要启动单机bkci服务时，可以使用如下方式启动本地rabbitmq
```shell
docker run -d --hostname mq --name mq -e RABBITMQ_DEFAULT_VHOST=devops -e RABBITMQ_DEFAULT_USER=guest -e RABBITMQ_DEFAULT_PASS=guest -p 5672:5672 bkci/mq
```
