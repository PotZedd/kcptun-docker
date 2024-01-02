# A docker image for kcptun

FROM alpine:latest
MAINTAINER ="PotZedd <potzedd@gmail.com>"

ENV KCP_VER 20231012

RUN \
    apk add --no-cache --virtual .build-deps curl \
    && curl -fSL https://github.com/xtaci/kcptun/releases/download/v$KCP_VER/kcptun-linux-amd64-$KCP_VER.tar.gz | tar xz -C /usr/bin server_linux_amd64 \
    && apk del .build-deps \

VOLUME ["/etc/kcptun"]
ENTRYPOINT ["/usr/bin/server_linux_amd64", "-c"]
CMD ["/etc/kcptun/config.json"]
