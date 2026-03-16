#!/usr/bin/with-contenv bashio

cd /app

if bashio::config.true 'debug'; then
    echo "Starting EdgeBridge in debug mode"
    python3 edgebridge.py -d
else
    echo "Starting EdgeBridge"
    python3 edgebridge.py
fi
