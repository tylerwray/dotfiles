#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

## Terminal Changes
ln -sF $DIR/../terminal/zshrc $HOME/.zshrc
ln -sF $DIR/../terminal/aliases $HOME/.aliases

## Git Changes
ln -sF $DIR/../git/gitconfig $HOME/.gitconfig
ln -sF $DIR/../git/gitignore $HOME/.gitignore

## Vim Changes
ln -sF $DIR/../vim/vimrc $HOME/.vimrc
ln -sF $DIR/../vim $HOME/.vim

echo === Plugin Install
vim +PlugInstall +qall

echo === Done
