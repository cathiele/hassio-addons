
FROM andig/evcc:latest

RUN \
    set -o pipefail \
    \
    apk add --no-cache \
        tar=1.32-r1 \
    \
    && apk add --no-cache \
        libcrypto1.1=1.1.1g-r0 \
        libssl1.1=1.1.1g-r0 \
        musl-utils=1.1.24-r9 \
        musl=1.1.24-r9 \
    \
    && apk add --no-cache \
        bash=5.0.17-r0 \
        curl=7.69.1-r1 \
        jq=1.6-r1 \
        tzdata=2020c-r0 \
    \
    && BUILD_ARCH="$(apk --print-arch)" \
    && S6_ARCH="${BUILD_ARCH}" \
    && if [ "${BUILD_ARCH}" = "i386" ]; then S6_ARCH="x86"; fi \
    && if [ "${BUILD_ARCH}" = "x86_64" ]; then S6_ARCH="x86"; fi \
    && if [ "${BUILD_ARCH}" = "armv7" ]; then S6_ARCH="arm"; fi \
    \
    && echo ${S6_ARCH} \
    && curl -L -s "https://github.com/just-containers/s6-overlay/releases/download/v2.1.0.2/s6-overlay-${S6_ARCH}.tar.gz" \
        | tar zxvf - -C / \
    \
    && mkdir -p /etc/fix-attrs.d \
    && mkdir -p /etc/services.d \
    \
   && curl -J -L -o /tmp/bashio.tar.gz \
        "https://github.com/hassio-addons/bashio/archive/v0.9.0.tar.gz" \
    && mkdir /tmp/bashio \
    && tar zxvf \
        /tmp/bashio.tar.gz \
        --strip 1 -C /tmp/bashio \
    \
    && mv /tmp/bashio/lib /usr/lib/bashio \
    && ln -s /usr/lib/bashio/bashio /usr/bin/bashio \
    \
    && rm -f -r \
        /tmp/*
WORKDIR /evcc

COPY scripts/run.sh evcc.dist.yaml /evcc/

CMD [ "/evcc/run.sh" ]
