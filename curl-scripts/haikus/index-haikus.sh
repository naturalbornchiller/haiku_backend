#!/bin/bash

curl "http://localhost:4741/haikus" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
