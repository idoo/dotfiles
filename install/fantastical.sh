#!/usr/bin/env bash

dotfiles_echo "-> Removing Fantastical config..."
rm -v ~/Library/Containers/com.flexibits.fantastical2.mac/Container.plist

dotfiles_echo "-> Linking Fantastical..."
ln -nfs "${DOTFILES}/settings/fantastica/com.flexibits.fantastical2.mac/Container.plist" ~/Library/Containers/com.flexibits.fantastical2.mac/Container.plist
