#!/bin/bash
set -e

# Define the version of .NET you want to install
DOTNET_VERSION="9.0"

echo "🚧 Installing .NET SDK $DOTNET_VERSION to /root/.dotnet"

# Step 1: Install prerequisites
sudo apt-get update
sudo apt-get install -y wget

# Step 2: Download and run the official installer
wget https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh
chmod +x dotnet-install.sh
./dotnet-install.sh --channel "$DOTNET_VERSION" --install-dir /root/.dotnet

# Step 3: Export and persist environment variables
export DOTNET_ROOT=/root/.dotnet
export PATH=/root/.dotnet:$PATH

# Print them for verification
echo "📌 Environment variables set:"
echo "DOTNET_ROOT=$DOTNET_ROOT"
echo "PATH=$PATH"

# Persist to .bashrc so it's available in future shells
echo 'export DOTNET_ROOT=/root/.dotnet' >> ~/.bashrc
echo 'export PATH=/root/.dotnet:$PATH' >> ~/.bashrc

# Step 4: Confirm installation
echo "✅ Installed .NET version:"
dotnet --version

echo "✅ .NET SDK $DOTNET_VERSION setup complete"
