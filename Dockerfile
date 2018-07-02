FROM alpine:edge
RUN apk add --no-cache nodejs docker openssh git curl
RUN apk add --no-cache bash docker-bash-completion
WORKDIR /work
ENTRYPOINT [ "bash" ]