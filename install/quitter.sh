#!/usr/bin/env bash

dotfiles_echo "-> Removing Quitter config..."
rm -v ~/Library/Preferences/com.marcoarment.quitter.plist

dotfiles_echo "-> Linking Quitter..."
ln -nfs "${DOTFILES}/settings/quitter/com.marcoarment.quitter.plist" ~/Library/Preferences/com.marcoarment.quitter.plist
