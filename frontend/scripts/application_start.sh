#!/bin/bash
set -e

echo "Restarting NGINX"
systemctl restart nginx

echo "NGINX restarted successfully"