#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/locations"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "location": {
      "street": "42 bicknell st",
      "city": "quincy",
      "state": "ma",
      "zip": "02111",
      "country": "US"
    }
  }'

echo
