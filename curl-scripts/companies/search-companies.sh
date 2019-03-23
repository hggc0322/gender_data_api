#!/bin/bash

curl "http://localhost:3000/companies?q=${NAME}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \

echo
