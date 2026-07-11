#!/bin/bash
set -e

echo "Stopping existing application"
if pm2 list | grep -q "server"; then
  pm2 stop server
  pm2 delete server
else
  echo "No existing pm2 process found - continuing"
fi

echo "Cleaning previous deployment"
rm -rf /home/ec2-user/app/backend
mkdir -p /home/ec2-user/app/backend
chown -R ec2-user:ec2-user /home/ec2-user/app