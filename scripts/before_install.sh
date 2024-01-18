#!/bin/bash

# Change Working Directory
cd /home/ubuntu/server  # Assuming 'ubuntu' is the default user for Ubuntu instances, change if needed

# Update & Set Node Version
curl -sL https://deb.nodesource.com/setup_20.x | sudo -E bash -

# Download Node & NPM
sudo apt-get update
sudo apt-get install -y nodejs npm

# Resolve Unmet Dependencies
sudo apt-get remove nodejs npm
sudo apt-get clean
sudo apt-get autoclean
sudo apt-get autoremove
sudo dpkg --configure -a
sudo apt-get install -f

# Install Node.js and npm Separately
sudo apt-get install -y nodejs npm

# Download PM2
sudo npm install pm2@latest -g

# Install Yarn Dependencies
echo "deb [signed-by=/usr/share/keyrings/yarnkey.gpg] https://dl.yarnpkg.com/debian stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update
sudo apt-get install -y yarn

# Verify Installation
node -v
npm -v
yarn -v
