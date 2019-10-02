#!/bin/bash

source ../.env

time=$(date +%s)
expiry=8400
username=$(($time + $expiry))

echo username: $username
echo password: $(echo -n $username | openssl dgst -binary -sha1 -hmac $TURN_SECRET | openssl base64)
