curl "http://localhost:4741/haiku/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}"
  
echo
