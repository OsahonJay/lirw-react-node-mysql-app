#!/bin/bash

echo "Starting backend application with pm2"
cd /home/ec2-user/app/backend
pm2 start server.js --name server --interpreter node -f

echo "Saving pm2 process list"
pm2 save

echo "Backend started successfully"
