#!/bin/sh

v2ray -config /etc/v2ray/config.json &
caddy run --config /etc/caddy/Caddyfile --adapter caddyfile
