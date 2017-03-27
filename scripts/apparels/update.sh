#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/apparels/"
curl "${API}${URL_PATH}${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "apparel": {
      "name": "RED T-shirt",
      "clothing_type": "inner-wear"
    }
  }'

echo
