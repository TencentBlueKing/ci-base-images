FROM centos:7
# Install tools
RUN yum update -y && \
    yum install -y kde-l10n-Chinese \
    yum reinstall -y glibc-common && \
    yum install -y telnet net-tools && \
    yum install -y python3 && \
    yum install -y java-1.8.0-openjdk && \
    yum install -y git && \
    yum install -y subversion && \
    yum clean all && \
    rm -rf /tmp/* rm -rf /var/cache/yum/* && \
    localedef -c -f UTF-8 -i zh_CN zh_CN.UTF-8 && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
ENV LANG=zh_CN.UTF-8 \
    LANGUAGE=zh_CN:zh \
    LC_ALL=zh_CN.UTF-8