# docker nginx rtmp
一个Dockerfile从源代码安装NGINX，nginx-rtmp-module和FFmpeg
HLS实时流媒体的默认设置。 建立在Alpine Linux上。

* Nginx 1.15.3 (从源代码编译)
* nginx-rtmp-module 1.2.1 (从源代码编译)
* ffmpeg 4.0.2 (从源代码编译)
* 默认HLS设置(见: [nginx.conf](nginx.conf))


## 用法:

### 服务端
* 拉取docker镜像并运行:
```
docker pull jun3/rtmp
docker run --name rtmp -p 1935:1935 -p 8080:80 -d -it jun3/rtmp
```
或者 

* 构建docker镜像并运行:
```
docker build -t jun3/rtmp .
docker run --name rtmp -p 1935:1935 -p 8080:80 -d -it jun3/rtmp
```

* 将实时内容串流到服务端:
```
rtmp://<server ip>:1935/stream/$STREAM_NAME
```

### OBS配置
* 流类型: `自定义流媒体服务器`
* 流地址: `rtmp://localhost:1935/stream`
* 流密钥: `hello`

### 观看流
* 在Safari，VLC或任何HLS播放器中，打开:
```
http://<server ip>:8080/live/$STREAM_NAME.m3u8
```
* 例如: `http://localhost:8080/live/hello.m3u8`
