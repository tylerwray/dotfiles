#!/usr/bin/env bash

command_exists () {
  type "$1" &> /dev/null ;
}

# Install homebrew
if command_exists brew ; then
  echo "Homebrew already installed"
else
  echo "Installing homebrew"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install GUI apps
gui_apps=(
  "1password"
  "alfred"
  "appcleaner"
  "daisydisk"
  "docker"
  "fantastical"
  "firefox"
  "insomnia"
  "iterm2"
  "keka"
  "kindle"
  "postico"
  "qlcolorcode"
  "qlmarkdown"
  "quicklook-json"
  "sketch"
  "slack"
  "spotify"
  "visual-studio-code"
)

for app in "${gui_apps[@]}"
do
  brew install --cask $app
done

# Install Terminal apps
terminal_apps=(
  "bat"
  "rg"
  "git"
  "jq"
  "neovim"
  "tree"
  "fzf"
)

for app in "${terminal_apps[@]}"
do
  brew install $app
done
