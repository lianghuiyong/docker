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
docker-compose -f ./docker-compose.yml down
docker rm -f $(docker ps -aq)

docker-compose -f ./docker-compose.yml up  --build