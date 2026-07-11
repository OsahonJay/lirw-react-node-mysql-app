#!/bin/bash

echo "Installing backend dependencies on instance"
cd /home/ec2-user/app/backend
npm install

echo "Writing environment configuration"
cat > /home/ec2-user/app/backend/.env << ENVEOF
DB_HOST=react-node-mysql-db.cxy6mmic0h2s.eu-west-2.rds.amazonaws.com
DB_PORT=3306
DB_USER=admin
DB_PASSWORD=your-rds-password
DB_NAME=react_node_app
PORT=3200
ENVEOF

echo "Setting correct ownership"
chown -R ec2-user:ec2-user /home/ec2-user/app/backend
