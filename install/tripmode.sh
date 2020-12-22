#!/usr/bin/env bash

dotfiles_echo "-> Removing TripMode config..."
rm -rf "~/Library/Application Support/TripMode"

dotfiles_echo "-> Linking TripMode..."
ln -nfs "${DOTFILES}/settings/tripmode" ~/Library/Application Support/TripMode
