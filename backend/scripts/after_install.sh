#!/bin/bash
set -e

echo "Installing backend dependencies on instance"
cd /home/ec2-user/app/backend
npm install --production

echo "Setting correct ownership"
chown -R ec2-user:ec2-user /home/ec2-user/app/backend