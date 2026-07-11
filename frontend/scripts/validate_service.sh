#!/bin/bash
set -e

echo "Waiting for NGINX to come up"
sleep 3

echo "Validating frontend is being served"
HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:80)

if [ "$HTTP_STATUS" -eq 200 ]; then
  echo "Validation passed - NGINX serving frontend with 200"
  exit 0
else
  echo "Validation failed - NGINX responded with $HTTP_STATUS"
  exit 1
fi