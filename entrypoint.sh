#!/bin/sh
mkdir -p /data/.openclaw
CONFIG=/data/.openclaw/openclaw.json

if [ ! -f "$CONFIG" ]; then
  echo '{"gateway":{"controlUi":{"dangerouslyAllowHostHeaderOriginFallback":true}}}' > "$CONFIG"
fi

exec node dist/index.js gateway --allow-unconfigured --bind lan --port $PORT
