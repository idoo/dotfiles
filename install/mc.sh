#!/usr/bin/env bash

dotfiles_echo "-> Downloading Midnight Commander themes..."
wget -P "${DOTFILES}/dotfiles/local/share/mc/skins" https://raw.githubusercontent.com/dracula/midnight-commander/master/skins/dracula.ini -q -c --show-progress
wget -P "${DOTFILES}/dotfiles/local/share/mc/skins" https://raw.githubusercontent.com/dracula/midnight-commander/master/skins/dracula256.ini -q -c --show-progress
