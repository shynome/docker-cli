FROM alpine:edge

# 默认工作目录
WORKDIR /work

# 必须的运行环境
RUN apk add --no-cache nodejs npm openssh git curl

# 添加 docker 用以管理容器服务
RUN apk add --no-cache docker

# 必要的编辑器
RUN apk add --no-cache vim && echo 'alias vi=vim'>>/etc/profile

# 和常用的 shell 保持一致为 bash , zsh 安装起来有点麻烦, 暂时我觉得 bash 已经够我用了
RUN apk add --no-cache bash
RUN sed "s/\/ash/\/bash/" -i /etc/passwd

RUN apk add --no-cache bash-doc bash-completion docker-bash-completion

CMD [ "/bin/bash" ]