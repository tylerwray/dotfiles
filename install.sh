#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Terminal Changes
ln -sF "$DIR/zshrc" "$HOME/.zshrc"

# Git Changes
ln -sF "$DIR/git/gitconfig" "$HOME/.gitconfig"
ln -sF "$DIR/git/gitignore_global" "$HOME/.gitignore_global"

# Vim Changes
ln -sF "$DIR/nvim" "$HOME/.config/nvim"

printf "All set 🎉"

