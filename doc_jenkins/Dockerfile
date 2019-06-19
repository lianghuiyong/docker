# Dockerfile - alpine

ARG RESTY_IMAGE_BASE="jenkins/jenkins"
ARG RESTY_IMAGE_TAG="lts-alpine"

# ARG RESTY_IMAGE_BASE="registry.cn-shenzhen.aliyuncs.com/better/jenkins"
# ARG RESTY_IMAGE_TAG="1.0.0"

FROM ${RESTY_IMAGE_BASE}:${RESTY_IMAGE_TAG}

LABEL maintainer="梁惠涌 <lianghuiyong@outlook.com>"

#使用阿里镜像
# RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

# switch to root, let the entrypoint drop back to jenkins
USER root

ENV JENKINS_INCREMENTALS_REPO_MIRROR https://mirrors.tuna.tsinghua.edu.cn/jenkins/updates/update-center.json