#!/bin/bash

set -e
# $HT_USER, $HT_PASS
source htpass.env
mkdir auth
docker run --rm --entrypoint htpasswd registry:2.7.0 -Bbn $HT_USER $HT_PASS >> $(pwd)/auth/htpasswd

# generate certs
openssl req -newkey rsa:4096 \
            -x509 \
            -sha256 \
            -days 3650 \
            -nodes \
            -out $(pwd)/certs/cert.crt \
            -keyout $(pwd)/certs/cert.key
