#!/bin/bash

curl "http://localhost:3000/regions" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "region": {
      "name": "'"${NAME}"'",
      "higher_than_2016_national_average": "true"
    }
  }'

echo
