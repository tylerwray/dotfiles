#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

## Terminal Changes
ln -sF $DIR/terminal/aliases $HOME/.aliases
ln -sF $DIR/terminal/bashrc $HOME/.bashrc
ln -sF $DIR/terminal/bash_ps1 $HOME/.bash_ps1
ln -sF $DIR/terminal/bash_profile $HOME/.bash_profile

## Git Changes
ln -sF $DIR/git/gitconfig $HOME/.gitconfig
ln -sF $DIR/git/gitignore $HOME/.gitignore

## Vim Changes
ln -sF $DIR/vim/vimrc $HOME/.vimrc
