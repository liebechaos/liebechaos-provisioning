#!/bin/sh

turnserver -n -v \
  --listening-ip 0.0.0.0 \
  --listening-port ${TURN_PORT} \
  --tls-listening-port ${TURN_PORT_TLS} \
  --external-ip "$(./external-ip.sh)" \
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
  --static-auth-secret="${TURN_SECRET}" \
  --cert cert.pem \
  --pkey key.pem
