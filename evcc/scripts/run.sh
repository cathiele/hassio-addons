#!/bin/sh

json2yaml /data/options.json > /etc/evcc.yaml

cat /etc/evcc.yaml

evcc