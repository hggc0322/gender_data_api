#!/bin/bash

curl "http://localhost:3000/companies/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \

echo
