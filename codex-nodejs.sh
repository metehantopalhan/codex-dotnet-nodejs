#!/bin/bash
set -e

# Define the version of Node.js you want to install
NODE_VERSION="18.x"

echo "🚧 Installing Node.js $NODE_VERSION"

# Step 1: Install prerequisites
sudo apt-get update
sudo apt-get install -y curl

# Step 2: Download and run the NodeSource setup script
curl -fsSL https://deb.nodesource.com/setup_$NODE_VERSION | sudo -E bash -

# Step 3: Install Node.js
sudo apt-get install -y nodejs

# Step 4: Confirm installation
echo "✅ Installed Node.js version:"
node --version
echo "✅ Installed npm version:"
npm --version

echo "✅ Node.js $NODE_VERSION setup complete"
