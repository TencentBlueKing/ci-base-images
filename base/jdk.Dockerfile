FROM blueking/centos

LABEL maintainer="Tencent BlueKing Devops"

ENV JAVA_HOME=/usr/local/java/TencentKona-8.0.2-252
ENV PATH=$PATH:$JAVA_HOME/bin
ENV CLASSPATH=.:${JAVA_HOME}/lib

RUN wget https://github.com/Tencent/TencentKona-8/releases/download/v8.0.2-GA/TencentKona8.0.2.b1_jdk_linux-x86_64_8u252.tar.gz && \
    mkdir /usr/local/java && \
    tar -xvf TencentKona8.0.2.b1_jdk_linux-x86_64_8u252.tar.gz -C /usr/local/java && \
    rm -rf TencentKona8.0.2.b1_jdk_linux-x86_64_8u252.tar.gz