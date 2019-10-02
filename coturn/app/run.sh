#!/bin/sh

turnserver -n -v \
  --listening-ip 0.0.0.0 \
  --min-port ${TURN_PORT_START} \
  --max-port ${TURN_PORT_END} \
  --server-name "${TURN_SERVER_NAME}" \
  --realm=${TURN_REALM} \
  --fingerprint \
  --bps-capacity=0 \
  --total-quota=100 \
  --no-multicast-peers \
  --stale-nonce \
  --no-cli --cli-password "unused" \
  --use-auth-secret \
  --static-auth-secret="${TURN_SECRET}"
  --no-tls \
  --no-dtls
