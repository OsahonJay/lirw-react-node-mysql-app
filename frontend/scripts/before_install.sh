#!/bin/bash
set -e

echo "Cleaning previous frontend deployment"
rm -rf /usr/share/nginx/html/dist
mkdir -p /usr/share/nginx/html/dist

echo "Clean complete"