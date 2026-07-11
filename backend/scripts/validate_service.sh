#!/bin/bash

echo "Waiting for backend to start"
sleep 5

echo "Validating backend process is running"
if pm2 list | grep -q "server"; then
  echo "Validation passed - backend process is running"
  exit 0
else
  echo "Validation failed - backend process not found"
  exit 1
fi
