FROM alpine:edge

# 默认工作目录
WORKDIR /work

# 和常用的 shell 保持一致为 bash , zsh 安装起来有点麻烦, 暂时我觉得 bash 已经够我用了
RUN apk add --no-cache bash bash-doc bash-completion 
RUN sed "s/\/ash/\/bash/" -i /etc/passwd

# docker 用以管理容器服务
RUN apk add --no-cache docker docker-bash-completion

# 必须的运行环境
RUN apk add --no-cache \
  nodejs npm \
  openssh git \
  curl \
  # 必要的编辑器
  vim

CMD [ "/bin/bash" ]

ENV LC_ALL=en_US.UTF-8

COPY rootfs /
