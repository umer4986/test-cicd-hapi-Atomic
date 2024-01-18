#!/bin/bash

# Change Working Directory
cd /home/ubuntu/server  # Assuming 'ubuntu' is the default user for Ubuntu instances, change if needed

# Update & Set Node Version
curl -sL https://deb.nodesource.com/setup_20.x | sudo -E bash -

# Download Node & NPM
sudo apt-get update
sudo apt-get install -y nodejs npm

# Resolve Unmet Dependencies (Remove unnecessary lines)

# Install Node.js and npm Separately (Remove unnecessary line)

# Download PM2
sudo npm install pm2@latest -g

# Install Yarn Dependencies with Key Import
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo gpg --dearmor -o /usr/share/keyrings/yarnkey.gpg
echo "deb [signed-by=/usr/share/keyrings/yarnkey.gpg] https://dl.yarnpkg.com/debian stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update
sudo apt-get install -y yarn

# Update npm to the latest version
sudo npm install -g npm@latest

# Verify Installation
node -v
npm -v
yarn -v
