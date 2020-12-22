#!/usr/bin/env bash

# osascript -e 'id of app "AppName"'

dotfiles_echo "-> Linging media files..."
while read -r ext; do
  duti -s org.videolan.vlc "$ext" all
done <"${DOTFILES}/install/duti/media"

dotfiles_echo "-> Linging dev files..."
while read -r ext; do
  duti -s com.microsoft.VSCode "$ext" all
done <"${DOTFILES}/install/duti/dev"
