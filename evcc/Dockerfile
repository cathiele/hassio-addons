
FROM andig/evcc:latest

RUN \
    set -o pipefail \
    && apk add --no-cache \
        jq=1.6-r1

WORKDIR /evcc

COPY scripts/run.sh evcc.dist.yaml /evcc/

ENTRYPOINT [ "/evcc/run.sh" ]
