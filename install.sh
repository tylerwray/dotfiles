#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Link init folder to home
# TODO Fix this
ln -sF "$DIR/init" "$HOME/init"

# macOS specific setup
./macOS/apps.sh
# ./macOS/setup.sh

# Terminal Changes
ln -sF "$DIR/terminal/aliases" "$HOME/.aliases"
ln -sF "$DIR/terminal/zshrc" "$HOME/.zshrc"

# Git Changes
ln -sF "$DIR/git/gitconfig" "$HOME/.gitconfig"
ln -sF "$DIR/git/gitignore_global" "$HOME/.gitignore_global"

# Vim Changes
ln -sF "$DIR/nvim" "$HOME/.config/nvim"


if [ ! -f "$HOME/.config/nvim/autoload/plug.vim" ] ; then
    echo "Downloading vim Plug ...."
    mkdir -p ~/.vim/autoload
    curl -L --progress-bar -o ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

echo "Installing Vim Plugins ...."
nvim +PlugInstall +qall

printf "TODO:\n\
install: \n\
  Stuff (https://github.com/avibrazil/RDM) \n\
\n\
open and login to literally everything \n\
"
