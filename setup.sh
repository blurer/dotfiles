#!/bin/bash

# Current directory where the script and dotfiles live
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Create symbolic links for shell files
echo "Setting up shell configurations..."
ln -sfv "$DOTFILES_DIR/shell/.bashrc" "$HOME/.bashrc"
#ln -sfv "$DOTFILES_DIR/shell/.zshrc" "$HOME/.zshrc" <-- should only be used after ohmyzsh is installed

# Create symbolic links for editor files
echo "Setting up editor configurations..."
ln -sfv "$DOTFILES_DIR/editors/.vimrc" "$HOME/.vimrc"

# Setup SSH config (being careful with permissions)
echo "Setting up SSH configurations..."
mkdir -p "$HOME/.ssh"
ln -sfv "$DOTFILES_DIR/ssh/config" "$HOME/.ssh/config"
ln -sfv "$DOTFILES_DIR/ssh/authorized_keys" "$HOME/.ssh/authorized_keys"
chmod 700 "$HOME/.ssh"
chmod 600 "$HOME/.ssh/config"
chmod 600 "$HOME/.ssh/authorized_keys"

echo "Dotfiles have been linked."