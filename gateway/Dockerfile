FROM openresty/openresty:latest
RUN apt update && apt install -y procps
RUN mkdir -p /data/bkce/ci/frontend \
    mkdir -p /data/bkce/logs
WORKDIR /usr/local/openresty/nginx