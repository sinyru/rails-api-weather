#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/weathers/"
curl "${API}${URL_PATH}${ID}" \
  --include \
  --request GET \
  --data '{
    "street":"42 bicknell st",
    "city":"boston",
    "state":"NY",
    "zip":"02169"
  }'
echo
