#!/bin/bash

curl "http://localhost:3000/companies" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "company": {
      "name": "'"${NAME}"'",
      "industry": "filler"
    }
  }'

echo
