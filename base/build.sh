#!/bin/bash
version=0.0.1
hub=docker.io

docker build -f centos.Dockerfile -t $hub/blueking/centos:${version} . --network=host
docker push $hub/blueking/centos:${version}
docker tag $hub/blueking/centos:${version} blueking/centos

docker build -f jdk.Dockerfile -t $hub/blueking/jdk:${version} . --network=host
docker push $hub/blueking/jdk:${version}
docker tag $hub/blueking/jdk:${version} blueking/jdk

docker build -f openresty.Dockerfile -t $hub/blueking/openresty:${version} . --network=host
docker push $hub/blueking/openresty:${version}
docker tag $hub/blueking/openresty:${version} blueking/openresty
