#!/bin/bash

# Fetch a valid JWT using username and password login method.
# Requires setting PASSWORD and CLIENT_SECRET env vars.
# Secret is available in Auth0 dashboard:
# https://manage.auth0.com/dashboard/us/enigma-app/applications/mN2BOkagOYaBb9ZKfsd3W2m46t2xhPk7/settings

SCRIPT_DIR="$(cd "$(dirname "${0}")" && pwd)"
AUTH_USER="test@enigmalabs.io"
AUTH_DOMAIN="auth.enigmalabs.io"
AUDIENCE="https://enigma-app.us.auth0.com/api/v2/"
CLIENT_ID="fHCBSk035Juxo48QUc6zldgB53yIn342"

set -e

cd "${SCRIPT_DIR}"

if ! command -v jq &> /dev/null; then
    brew install jq >> /dev/null
fi

CREDENTIALS=$(curl -Ss --request POST \
    --url "https://${AUTH_DOMAIN}/oauth/token" \
    --header 'content-type: application/x-www-form-urlencoded' \
    --data "grant_type=password&username=${AUTH_USER}&password=${PASSWORD?:UNSET}&scope=openid profile email&audience=${AUDIENCE}&client_id=${CLIENT_ID}&client_secret=${CLIENT_SECRET?:UNSET}")

TOKEN=$(echo "${CREDENTIALS}" | jq .access_token | sed 's/"//g')

if comand -v pbcopy &> /dev/null; then
    echo "${TOKEN}"
else
    echo "${TOKEN}" | pbcopy
    echo "Token copied to clipboard for ${AUTH_USER}."
fi
