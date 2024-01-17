#!/bin/bash

# Change Working Directory
cd /home/ubuntu/server  # Assuming 'ubuntu' is the default user for Ubuntu instances, change if needed

# Delete Old PM2 Service
pm2 delete Frontend
pm2 start server.js --name Frontend
