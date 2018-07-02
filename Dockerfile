FROM alpine:edge
RUN apk add --no-cache nodejs docker openssh git curl
RUN apk add --no-cache vim
RUN apk add --no-cache bash bash-completion docker-bash-completion
WORKDIR /work
ENTRYPOINT [ "bash" ]