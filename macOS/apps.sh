#!/usr/bin/env bash

command_exists () {
  type "$1" &> /dev/null ;
}

# Install nvm
# if [ -d "$HOME/.nvm" ]; then
  # echo "NVM already installed"
# else
  # echo "Installing NVM"
  # curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
# fi

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
  "docker"
  "fantastical"
  "firefox"
  "graphiql"
  "insomnia"
  "iterm2"
  "notion"
  "sketch"
  "spotify"
  "spectacle"
  "the-unarchiver"
  "things"
  "quicklook-json"
  "qlmarkdown"
  "qlcolorcode"
)

for app in "${gui_apps[@]}"
do
  brew cask install $app
done

# Install Terminal apps
terminal_apps=(
  "bat"
  "elixir"
  "rg"
  "git"
  "go"
  "jq"
  "neovim"
  "python"
  "ruby"
  "tree"
)

for app in "${terminal_apps[@]}"
do
  brew install $app
done

