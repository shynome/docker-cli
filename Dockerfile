FROM alpine:edge
RUN apk add --no-cache nodejs docker openssh git curl vim
RUN apk add --no-cache bash bash-completion docker-bash-completion
WORKDIR /work
ENTRYPOINT [ "bash" ]