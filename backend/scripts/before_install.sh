#!/bin/bash

echo "Stopping existing application"
pm2 stop all || true
pm2 delete all || true

echo "Cleaning previous deployment"
rm -rf /home/ec2-user/app/backend
mkdir -p /home/ec2-user/app/backend
chown -R ec2-user:ec2-user /home/ec2-user/app
