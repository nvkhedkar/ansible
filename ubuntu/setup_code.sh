#!/bin/bash

# Update the package list
sudo apt update

# Install snapd if it's not already installed
if ! command -v snap &> /dev/null; then
    sudo apt install -y snapd
fi

# Install Visual Studio Code using snap
sudo snap install --classic code

# Verify the installation
code --version

# Optionally, launch Visual Studio Code
code &
