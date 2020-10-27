#!/bin/sh

if [ ! -f "/config/evcc.yaml" ]; then
    echo "config not found. Creating default config file in /config/evcc.yaml"
    cp /evcc/evcc.dist.yaml /config/evcc.yaml
fi
echo "starting evcc --config /config/evcc.yaml"
evcc --config /config/evcc.yaml