#!/bin/bash
set -e

echo "Waiting for backend to start"
sleep 5

echo "Validating backend API"
HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:3200/api/authors)

if [ "$HTTP_STATUS" -eq 200 ]; then
  echo "Validation passed - API responding with 200"
  exit 0
else
  echo "Validation failed - API responded with $HTTP_STATUS"
  exit 1
fi