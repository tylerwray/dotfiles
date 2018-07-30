#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

## Terminal Changes
ln -sF $DIR/terminal/aliases $HOME/.aliases
ln -sF $DIR/terminal/zshrc $HOME/.zshrc

## Git Changes
ln -sF $DIR/git/gitconfig $HOME/.gitconfig
ln -sF $DIR/git/gitignore $HOME/.gitignore

## Vim Changes
ln -sF $DIR/vim/vimrc $HOME/.vimrc

echo "Downloading vim Plug ...."
mkdir -p ~/.vim/autoload
curl -L --progress-bar -o ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Installing Vim Plugins ...."
vim +PlugInstall +qall
