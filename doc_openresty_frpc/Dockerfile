# Dockerfile - alpine
# https://github.com/openresty/docker-openresty

ARG RESTY_IMAGE_BASE="openresty/openresty"
ARG RESTY_IMAGE_TAG="1.15.8.1rc1-alpine"

FROM ${RESTY_IMAGE_BASE}:${RESTY_IMAGE_TAG}

LABEL maintainer="梁惠涌 <lianghuiyong@outlook.com>"

#使用阿里镜像
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

# 拷贝openresty配置文件
COPY conf/nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
COPY conf/nginx.vh.default.conf /etc/nginx/conf.d/default.conf

# frpc配置
ENV FRP_VER 0.21.0
ENV FRP_FULL_VER frp_${FRP_VER}_linux_amd64

COPY lib/frp_0.21.0_linux_amd64.tar.gz frp_0.21.0_linux_amd64.tar.gz

RUN tar vxzf frp_0.21.0_linux_amd64.tar.gz \
  && rm frp_0.21.0_linux_amd64.tar.gz

ADD conf/nginx.conf /nginx.conf
ADD conf/frpc.ini   /frpc.ini

CMD ["openresty", "-c", "/nginx.conf", "-g", "daemon off;"]

# 添加入口脚本.
# COPY shell/entrypoint.sh /entrypoint.sh
# RUN  chmod a+x /entrypoint.sh
# CMD ["sh", "/entrypoint.sh"]

# Use SIGQUIT instead of default SIGTERM to cleanly drain requests
# See https://github.com/openresty/docker-openresty/blob/master/README.md#tips--pitfalls
STOPSIGNAL SIGQUIT