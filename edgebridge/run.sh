#!/usr/bin/with-contenv bashio

CONFIG_PATH=/data

PORT=$(bashio::config 'port')
DEBUG=$(bashio::config 'debug')

cd /app

echo "Starting EdgeBridge on port $PORT"

if bashio::config.true 'debug'; then
    python3 edgebridge.py -d
else
    python3 edgebridge.py
fi
