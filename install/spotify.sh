#!/usr/bin/env bash

dotfiles_echo "-> Removing Spotify config..."
rm -v ~/Library/Preferences/com.spotify.client.plist

dotfiles_echo "-> Linking Spotify..."
ln -nfs "${DOTFILES}/settings/spotify/com.spotify.client.plist" ~/Library/Preferences/com.spotify.client.plist
