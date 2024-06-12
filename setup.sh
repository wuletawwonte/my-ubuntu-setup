#!/bin/bash

# Update and upgrade
sudo apt update
sudo apt upgrade -y

# Install general utilities
sudo apt install -y curl wget git vim code

# Install development tools
sudo apt install -y build-essential

# Install Node.js and npm
sudo apt install -y nodejs npm

# Install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
sudo usermod -aG docker $USER

# Git configuration
git config --global user.name "Wuletaw Wonte"
git config --global user.email "wuletawwonte@gmail.com"

# Vim configuration
echo "set number" > ~/.vimrc

# Custom bash aliases
echo "alias ll='ls -lah'" >> ~/.bashrc
source ~/.bashrc

echo "Setup complete!"
