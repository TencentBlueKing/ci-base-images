FROM centos:centos7

LABEL maintainer="Tencent BlueKing Devops"

RUN curl https://mirrors.tencent.com/repo/centos7_base.repo -o /etc/yum.repos.d/CentOS-Base.repo && \
    yum -y install wget && \
    yum clean all