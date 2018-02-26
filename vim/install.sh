#!/bin/sh

if [[ -e $HOME/.vimrc || -e $HOME/.vim ]]; then
  echo "Ooops: ~/.vimrc or ~/.vim already exists. \n\
       It looks like you already have some vim configuration. \n\
       Try to run ./uninstall.sh"
else

  echo === Linking vim directories
  ln -s $PWD/vimrc $HOME/.vimrc
  ln -s $PWD $HOME/.vim

  echo === Plugin Install
  vim +PlugInstall +qall

  echo === Done
fi
