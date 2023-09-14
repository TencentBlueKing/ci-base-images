FROM openjdk:8u342-jdk

LABEL image.authors="zanyzhao@msn.com"

ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

# install base tools
RUN apt-get update
RUN apt-get install -y git git-lfs gcc g++ make clang cmake curl wget python3

# TODO: this path is bad bad bad !
RUN ln -sf $JAVA_HOME /usr/local/jre

# install CI tools

