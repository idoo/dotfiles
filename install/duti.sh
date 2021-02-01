#!/usr/bin/env bash

# osascript -e 'id of app "AppName"'

dotfiles_echo "-> Linging archives files..."
while read -r ext; do
  duti -s cx.c3.theunarchiver "$ext" all
done <"${DOTFILES}/install/duti/archives"

dotfiles_echo "-> Linging media files..."
while read -r ext; do
  duti -s org.videolan.vlc "$ext" all
done <"${DOTFILES}/install/duti/media"

dotfiles_echo "-> Linging dev files..."
while read -r ext; do
  duti -s com.microsoft.VSCode "$ext" all
done <"${DOTFILES}/install/duti/dev"

dotfiles_echo "-> Linging svg..."
while read -r ext; do
  duti -s com.wolfrosch.Gapplin "$ext" all
done <"${DOTFILES}/install/duti/svg"
