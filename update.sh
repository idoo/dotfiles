#!/usr/bin/env bash

source "./install/adblock.sh"

mas upgrade

omz update

brew update && brew upgrade

asdf plugin-update --all

softwareupdate -dia

# gem update --default
