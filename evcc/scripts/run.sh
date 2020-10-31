#!/usr/bin/env bash
set -e

CONFIG_PATH=/data/options.json

CONFIG_FILE=$(jq --raw-output '.config_file // empty' $CONFIG_PATH)

echo "evcc addon Startup script run.sh"

echo "Using config ${CONFIG_FILE}"

if [ ! -f ${CONFIG_FILE} ]; then
    echo "config not found. Please see evcc documentation and /config/evcc.dist.yaml for example configuration."
    cp /evcc/evcc.dist.yaml /config/evcc.dist.yaml
fi
echo "starting evcc --config ${CONFIG_FILE}"
evcc --config ${CONFIG_FILE}
