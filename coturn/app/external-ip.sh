#!/bin/sh

if [ -z "$EXTERNAL_IP" ]; then
  export EXTERNAL_IP="$(curl -4 https://icanhazip.com 2>/dev/null)"
fi

echo "$EXTERNAL_IP"
