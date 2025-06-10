#!/bin/bash
set -e

# Define the Node.js version required for React
NODE_VERSION="18.x"

echo "🚧 Setting up React development environment"

# Step 1: Install prerequisites
sudo apt-get update
sudo apt-get install -y curl

# Step 2: Install Node.js (required for React)
curl -fsSL https://deb.nodesource.com/setup_$NODE_VERSION | sudo -E bash -
sudo apt-get install -y nodejs

# Step 3: Confirm Node.js and npm installation
echo "✅ Installed Node.js version:"
node --version
echo "✅ Installed npm version:"
npm --version

# Step 4: Install create-react-app globally
sudo npm install -g create-react-app

# Step 5: Confirm create-react-app installation
echo "✅ Installed create-react-app version:"
create-react-app --version

echo "✅ React development environment setup complete"
