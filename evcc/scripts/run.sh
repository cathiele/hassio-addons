#!/usr/bin/with-contenv bashio

echo "evcc addon Startup script run.sh"

echo "Using config $(bashio::config 'config_file')"

if [ ! -f $(bashio::config 'config_file') ]; then
    echo "config not found. Please see evcc documentation and /config/evcc.dist.yaml for example configuration."
    cp /evcc/evcc.dist.yaml /config/evcc.dist.yaml
fi
echo "starting evcc --config $(bashio::config 'config_file')"
evcc --config $(bashio::config 'config_file')