#!/bin/bash
set -e

# Define the version of Go you want to install
GO_VERSION="1.23.5"

echo "🚧 Installing Go $GO_VERSION to /usr/local"

# Step 1: Install prerequisites
sudo apt-get update
sudo apt-get install -y wget tar

# Step 2: Download and extract Go binary
wget https://go.dev/dl/go$GO_VERSION.linux-amd64.tar.gz -O go$GO_VERSION.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go$GO_VERSION.linux-amd64.tar.gz

# Step 3: Export and persist environment variables
export PATH=/usr/local/go/bin:$PATH

# Print them for verification
echo "📌 Environment variables set:"
echo "PATH=$PATH"

# Persist to .bashrc so it's available in future shells
echo 'export PATH=/usr/local/go/bin:$PATH' >> ~/.bashrc

# Step 4: Confirm installation
echo "✅ Installed Go version:"
go version

echo "✅ Go $GO_VERSION setup complete"
