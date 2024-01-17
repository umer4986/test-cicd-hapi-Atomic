#!/bin/bash

# Change Working Directory
cd /home/ubuntu/server  # Assuming 'ubuntu' is the default user for Ubuntu instances, change if needed

# Remove Unused Code
rm -rf node_modules
rm -rf build

# Install node_modules & Make React Build
npm install
npm run build
