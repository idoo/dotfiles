#!/usr/bin/env bash

dotfiles_echo "-> Removing Telegram config..."
rm -v ~/Library/Preferences/ru.keepcoder.Telegram.plist

dotfiles_echo "-> Linking Telegram..."
ln -nfs "${DOTFILES}/settings/telegram/ru.keepcoder.Telegram.plist" ~/Library/Preferences/ru.keepcoder.Telegram.plist
