
FROM andig/evcc:latest

RUN \
    curl -J -L -o /tmp/bashio.tar.gz \
        "https://github.com/hassio-addons/bashio/archive/v0.9.0.tar.gz" \
    && mkdir /tmp/bashio \
    && tar zxvf \
        /tmp/bashio.tar.gz \
        --strip 1 -C /tmp/bashio \
    \
    && mv /tmp/bashio/lib /usr/lib/bashio \
    && ln -s /usr/lib/bashio/bashio /usr/bin/bashio

WORKDIR /evcc

COPY scripts/run.sh evcc.dist.yaml /evcc/

ENTRYPOINT [ "/evcc/run.sh" ]
