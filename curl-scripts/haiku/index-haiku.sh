#!/bin/bash

curl "http://localhost:4741/haiku" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
