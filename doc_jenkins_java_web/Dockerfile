# Dockerfile - alpine

ARG RESTY_IMAGE_BASE="jenkins/jenkins"
ARG RESTY_IMAGE_TAG="lts-alpine"

FROM ${RESTY_IMAGE_BASE}:${RESTY_IMAGE_TAG}

LABEL maintainer="梁惠涌 <lianghuiyong@outlook.com>"

# switch to root, let the entrypoint drop back to jenkins
USER root

ENV JENKINS_INCREMENTALS_REPO_MIRROR https://mirrors.tuna.tsinghua.edu.cn/jenkins/updates/update-center.json