#!/usr/bin/env bash

echo " (        )           )     (     "
echo " )\ )  ( /(   (    ( /(     )\ )  "
echo "(()/(  )\())  )\   )\())(  (()/(  "
echo " /(_))((_)\ (((_)|((_)\ )\  /(_)) "
echo "(_))_   ((_))\___|_ ((_|(_)(_))   "
echo " |   \ / _ ((/ __| |/ /| __| _ \  "
echo " | |) | (_) | (__  ' < | _||   /  "
echo " |___/ \___/ \___|_|\_\|___|_|_\  "
echo "                                  "

# 删除所有容器
docker rm -f $(docker ps -aq)

# 删除所有镜像
docker image rm -f $(docker image ls -aq)