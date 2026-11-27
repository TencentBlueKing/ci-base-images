FROM blueking/centos

LABEL maintainer="Tencent BlueKing Devops"

ENV JAVA_HOME=/usr/local/java/TencentKona-8.0.15-382
ENV PATH=$PATH:$JAVA_HOME/bin
ENV CLASSPATH=.:${JAVA_HOME}/lib

RUN wget https://github.com/Tencent/TencentKona-8/releases/download/8.0.15-GA/TencentKona8.0.15.b1_jdk_linux-x86_64_8u382.tar.gz && \
    mkdir /usr/local/java && \
    tar -xvf TencentKona8.0.15.b1_jdk_linux-x86_64_8u382.tar.gz -C /usr/local/java && \
    rm -rf TencentKona8.0.15.b1_jdk_linux-x86_64_8u382.tar.gz

# 移除 eMudhra 失陷中间证书所链到的根证书。Kona 8 的 cacerts 没有 emSign 根，只有 comodoaaaca。
# 别名不存在时跳过，删完后名单里还能搜到就让构建失败。
RUN set -e; \
    CACERTS="${JAVA_HOME}/jre/lib/security/cacerts"; \
    KEYTOOL="${JAVA_HOME}/bin/keytool"; \
    for alias in \
        "emsignrootcag1 [jdk]" \
        "emsignrootcag2 [jdk]" \
        "emsigneccrootcag3 [jdk]" \
        "comodoaaaca [jdk]"; do \
        if "${KEYTOOL}" -list -keystore "${CACERTS}" -storepass changeit \
            -alias "${alias}" >/dev/null 2>&1; then \
            "${KEYTOOL}" -delete -keystore "${CACERTS}" -storepass changeit -alias "${alias}"; \
        fi; \
    done; \
    if "${KEYTOOL}" -list -keystore "${CACERTS}" -storepass changeit \
        | grep -iE 'emsign|emudhra|comodoaaaca'; then \
        echo "compromised CA roots still present" >&2; \
        exit 1; \
    fi
