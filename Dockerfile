FROM alpine
COPY repositories /etc/apk/
RUN apk add --no-cache nodejs docker openssh git curl