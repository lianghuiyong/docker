# 一、命令工具
### Docker 安装
#### Linux
```
$ curl -fsSL https://get.docker.com -o get-docker.sh
$ sudo sh get-docker.sh
$ sudo usermod -aG docker $USER

启动
# service 命令的用法
$ sudo service docker start
# systemctl 命令的用法
$ sudo systemctl start docker
```

### 启动
sh restart.sh

### 清空
sh remove.sh

### 关闭docker compose
docker-compose -f ./doc_frpc/docker-compose.yml down

### 删除image
docker rmi -f <IMAGE ID>

### 运行终端
docker exec -it openresty sh

RUN echo $(ls -1 /tmp/dir)

# 二、资源目录

### 1、[Android SDK](https://androidsdkmanager.azurewebsites.net/Buildtools) 
