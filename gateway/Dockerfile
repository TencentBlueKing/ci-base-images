FROM openresty/openresty:latest
RUN apt update -y && apt install -y procps consul
RUN mkdir -p /data/bkce/ci/frontend \
    mkdir -p /data/bkce/logs \
    mkdir -p /usr/local/openresty/nginx/run
WORKDIR /usr/local/openresty/nginx