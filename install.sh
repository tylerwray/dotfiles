#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Terminal Changes
ln -sF "$DIR/zshrc" "$HOME/.zshrc"

# Git Changes
ln -sF "$DIR/git/gitconfig" "$HOME/.gitconfig"
ln -sF "$DIR/git/gitignore_global" "$HOME/.gitignore_global"

# Vim Changes
ln -sF "$DIR/nvim" "$HOME/.config/nvim"

<<<<<<< Updated upstream
=======

# if [ ! -f "$HOME/.config/nvim/autoload/plug.vim" ] ; then
#     echo "Downloading vim Plug ...."
#     mkdir -p ~/.vim/autoload
#     curl -L --progress-bar -o ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# fi

# echo "Installing Vim Plugins ...."
# nvim +PlugInstall +qall

>>>>>>> Stashed changes
printf "All set 🎉"

