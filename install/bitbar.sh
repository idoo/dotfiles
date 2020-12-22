#!/usr/bin/env bash

dotfiles_echo "-> Removing BitBar config..."
rm -v ~/Library/Preferences/com.matryer.BitBar.plist

dotfiles_echo "-> Linking BitBar..."
ln -nfs "${DOTFILES}/settings/bitbar/com.matryer.BitBar.plist" ~/Library/Preferences/com.matryer.BitBar.plist
