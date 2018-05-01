FROM alpine:3.6

LABEL maintainer="shoma416@gmail.com"

RUN set -ex \
    && apk update \
    && apk add --no-cache \
        squid=3.5.27-r0 \
        curl

COPY docker-entrypoint.sh /

EXPOSE 3128

ENTRYPOINT ["/docker-entrypoint.sh"]