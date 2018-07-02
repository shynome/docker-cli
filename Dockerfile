FROM alpine:edge
RUN apk add --no-cache nodejs docker openssh git curl
RUN apk add --no-cache docker-bash-completion