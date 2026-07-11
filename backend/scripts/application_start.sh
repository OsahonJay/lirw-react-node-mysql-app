#!/bin/bash
set -e

echo "Starting backend application with pm2"
cd /home/ec2-user/app/backend
sudo -u ec2-user npm run serve

echo "Saving pm2 process list"
sudo -u ec2-user pm2 save

echo "Backend started successfully"