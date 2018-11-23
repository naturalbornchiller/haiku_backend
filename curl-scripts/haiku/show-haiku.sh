#!/bin/bash

curl "http://localhost:4741/haiku/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"
  
echo
