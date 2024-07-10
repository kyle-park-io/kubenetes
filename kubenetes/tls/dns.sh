#!/bin/bash

yes Y |
    sudo certbot delete --cert-name jungho.dev

sudo ./certbot_venv/bin/certbot certonly \
    --preferred-challenges dns-01 \
    -d jungho.dev \
    --authenticator dns-godaddy \
    --dns-godaddy-credentials ./godaddy.ini \
    --dns-godaddy-propagation-seconds 10

# sudo ./certbot_venv/bin/certbot certonly \
#     --authenticator dns-godaddy \
#     --dns-godaddy-credentials ./godaddy.ini \
#     --dns-godaddy-propagation-seconds 10 \
#     --keep-until-expiring --non-interactive --expand \
#     --server https://acme-v02.api.letsencrypt.org/directory \
#     -d jungho.dev
