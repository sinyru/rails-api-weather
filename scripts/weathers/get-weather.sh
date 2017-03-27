#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/weathers/"
curl "${API}${URL_PATH}${ID}" \
  --include \
  --request GET \

echo
