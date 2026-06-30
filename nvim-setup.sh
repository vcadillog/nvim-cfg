#!/usr/bin/env bash
set -e

echo "Updating system and installing dependencies..."
sudo apt-get update && sudo apt-get install -y \
        curl git unzip wget gzip tar build-essential \
            python3 python3-pip nodejs npm ripgrep fd-find xclip ca-certificates

# Install Tree-sitter CLI
echo "Installing Tree-sitter CLI..."
curl -LO https://github.com/tree-sitter/tree-sitter/releases/download/v0.26.9/tree-sitter-cli-linux-x64.zip
sudo unzip -o tree-sitter-cli-linux-x64.zip -d /usr/local/bin/
rm tree-sitter-cli-linux-x64.zip
sudo chmod +x /usr/local/bin/tree-sitter

# Install Neovim Pre-built Binary
echo "Installing Neovim..."
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
rm nvim-linux-x86_64.tar.gz
sudo ln -sf /opt/nvim-linux-x86_64/bin/nvim /usr/local/bin/nvim

# Clone Packer
echo "Setting up Packer..."
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Clone your configuration
echo "Cloning Neovim Configuration..."
rm -rf ~/.config/nvim
git clone https://github.com/vcadillog/nvim-cfg ~/.config/nvim

# Cloning copilot repo
git clone --depth=1 https://github.com/github/copilot.vim.git \
  ~/.config/nvim/pack/github/start/copilot.vim

# TODO: Headless plugin synchronization

echo "Setup complete! Install nvim Packages manually to start coding."

