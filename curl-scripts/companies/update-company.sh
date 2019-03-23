#!/bin/bash

curl "http://localhost:3000/companies/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "company": {
      "benefits": "'"${BENEFIT}"'"
    }
  }'

echo
