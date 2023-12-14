# FROM ubuntu

# RUN apt update -y && apt install -y wget curl

# RUN mkdir -p /config

# CMD ["docker-compose", "up", "-d"]

# 使用 jlesage/firefox 作为基础镜像
FROM jlesage/firefox

# 设置环境变量
ENV TZ=Asia/Hong_Kong \
    DISPLAY_WIDTH=1920 \
    DISPLAY_HEIGHT=1080 \
    KEEP_APP_RUNNING=1 \
    ENABLE_CJK_FONT=1 \
    DARK_MODE=1 \
    VNC_PASSWORD=admin

# 暴露端口
EXPOSE 5800

# 设置挂载点
VOLUME ["/config"]


RUN docker run -d --shm-size 2g --name firefox -p 5800:5800 -v /data/firefox/config:/config:rw firefox-image
# 设置容器的内存资源为2g
# 这个选项不能在 Dockerfile 中设置，需要在运行 docker run 命令时设置
# --shm-size 2g
