FROM ubuntu:20.04

LABEL image.authors="zanyzhao@msn.com"

ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

# change to mirrors.cloud.tencent.com
COPY sources.list /etc/apt/

# install base tools
RUN apt-get update
RUN apt-get install -y git git-lfs gcc g++ make clang cmake openjdk-8-jdk curl

# TODO: this path is bad bad bad !
RUN ln -sf $JAVA_HOME /usr/local/jre

# install CI tools
RUN apt-get install python3
