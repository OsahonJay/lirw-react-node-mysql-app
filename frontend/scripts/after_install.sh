#!/bin/bash
set -e

echo "Setting permissions on frontend files"
chown -R nginx:nginx /usr/share/nginx/html/dist
chmod -R 755 /usr/share/nginx/html/dist

echo "Permissions set successfully"