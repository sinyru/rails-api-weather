#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/locations/"
curl "${API}${URL_PATH}${ID}" \
  --header "Authorization: Token token=$TOKEN" \
  --include \
  --request GET \

echo
