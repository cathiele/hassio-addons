
FROM andig/evcc:0.30

WORKDIR /evcc

#RUN mkdir /data

#RUN apk add python3 py3-pip

#RUN pip3 install json2yaml

COPY scripts/run.sh /evcc

COPY evcc.dist.yaml /etc

ENTRYPOINT [ "/evcc/run.sh" ]
