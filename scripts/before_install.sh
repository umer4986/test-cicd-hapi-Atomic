#!/bin/bash

# Change Working Directory
cd /home/ubuntu/server  # Assuming 'ubuntu' is the default user for Ubuntu instances, change if needed

# Update & Set Node Version
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -

# Download Node & NPM
sudo apt-get update
sudo apt-get install -y nodejs npm

# Download PM2
sudo npm install pm2@latest -g
