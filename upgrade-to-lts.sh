#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "Updating package lists..."
sudo apt update

echo "Upgrading installed packages..."
sudo apt upgrade -y

echo "Performing distribution upgrade..."
sudo apt dist-upgrade -y

echo "Installing update-manager-core if not already installed..."
sudo apt install -y update-manager-core

echo "Ensuring release upgrades are set to LTS..."
sudo sed -i 's/^Prompt=.*/Prompt=lts/' /etc/update-manager/release-upgrades

echo "Starting release upgrade process..."
sudo do-release-upgrade

echo "Displaying new system release info:"
lsb_release -a
