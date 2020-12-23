#!/usr/bin/env zsh

source "./install/adblock.sh"

mas upgrade

omz update

brew update && brew upgrade
brew cu -a -f -y --no-quarantine --cleanup
brew cleanup

asdf plugin-update --all

softwareupdate -dia

# gem update --default
