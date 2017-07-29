#!/bin/bash

# Install Caskroom
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install packages
apps=(
    alfred
    1password
    gyazo
    dropbox
    google-drive
    spectacle
    flux
    dash
    imagealpha
    imageoptim
    iterm2
    atom
    sublime-text
    firefox
    firefoxnightly
    google-chrome
    google-chrome-canary
    glimmerblocker
    hammerspoon
    kaleidoscope
    macdown
    opera
    screenflow  
    skype
    slack
    transmission
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package