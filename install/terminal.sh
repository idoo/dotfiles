#!/usr/bin/env bash

dotfiles_echo "-> Removing Terminal config..."
rm -v ~/Library/Preferences/com.apple.Terminal.plist

dotfiles_echo "-> Linking Terminal..."
ln -nfs "${DOTFILES}/settings/terminal/com.apple.Terminal.plist" ~/Library/Preferences/com.apple.Terminal.plist
