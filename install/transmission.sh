#!/usr/bin/env bash

dotfiles_echo "-> Removing Transmission config..."
rm -v ~/Library/Preferences/org.m0k.transmission.plist
rm -rfv ~/Library/Application\ Support/Transmission/blocklists

dotfiles_echo "-> Linking Transmission..."
mkdir -p ~/Library/Application Support/Transmission/
ln -nfs "${DOTFILES}/settings/transmission/org.m0k.transmission.plist" ~/Library/Preferences/org.m0k.transmission.plist
ln -nfs "${DOTFILES}/settings/transmission/blocklists" ~/Library/Application\ Support/Transmission/blocklists


# Use `~/Downloads/Torrents` to store incomplete downloads
defaults write org.m0k.transmission UseIncompleteDownloadFolder -bool true
defaults write org.m0k.transmission IncompleteDownloadFolder -string "${HOME}/Downloads/Torrents"

# Use `~/Downloads` to store completed downloads
defaults write org.m0k.transmission DownloadLocationConstant -bool true

# Don’t prompt for confirmation before downloading
defaults write org.m0k.transmission DownloadAsk -bool false
defaults write org.m0k.transmission MagnetOpenAsk -bool false

# Don’t prompt for confirmation before removing non-downloading active transfers
defaults write org.m0k.transmission CheckRemoveDownloading -bool true

# Trash original torrent files
defaults write org.m0k.transmission DeleteOriginalTorrent -bool true

# Hide the donate message
defaults write org.m0k.transmission WarningDonate -bool false
# Hide the legal disclaimer
defaults write org.m0k.transmission WarningLegal -bool false

# IP block list.
# Source: https://giuliomac.wordpress.com/2014/02/19/best-blocklist-for-transmission/
defaults write org.m0k.transmission BlocklistNew -bool true
defaults write org.m0k.transmission BlocklistURL -string "http://john.bitsurge.net/public/biglist.p2p.gz"
defaults write org.m0k.transmission BlocklistAutoUpdate -bool true

# Randomize port on launch
defaults write org.m0k.transmission RandomPort -bool true

# Upload rate
defaults write org.m0k.transmission UploadLimit -int 0
defaults write org.m0k.transmission SpeedLimitUploadLimit -int 0
defaults write org.m0k.transmission EncryptionRequire -int 1
