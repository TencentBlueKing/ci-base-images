# bkci base dockerimage

## Docker公共构建机构建机基础镜像

- Dockerfile:
  - ci-build/Dockerfile

```
docker pull bkci/ci:latest
```

## Docker无编译环境基础镜像

无编译环境的特点是小，基础的。没有编译环境等特殊依赖

- Dockerfile:
  - ci-build-less/Dockerfile

```
docker pull bkci/ci:alpine
```