#!/usr/bin/env bash

# 启动openresty  -c /root/conf/nginx.conf
openresty -c /nginx.conf

# 启动frpc
# ./frp_0.21.0_linux_amd64/frpc -c /frpc.ini