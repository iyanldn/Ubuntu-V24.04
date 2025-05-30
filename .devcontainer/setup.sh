#!/bin/bash
set -e

echo "📁 Setting up dummy config..."

mkdir -p ~/.config/nvim
echo "\" Auto-generated config" > ~/.config/nvim/init.vim
echo "set number" >> ~/.config/nvim/init.vim

mkdir -p ~/.config/tmux
echo "# Auto tmux config" > ~/.config/tmux/tmux.conf

echo "# .zshrc auto" > ~/.zshrc
echo "alias ll='ls -la'" >> ~/.zshrc

echo "✅ Environment siap!"
