#!/usr/bin/env bash


if [ -z "$ITERM_CONFIG" ]; then
    export ITERM_CONFIG="${DOTFILES}/settings/iterm2"
fi

# Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "${ITERM_CONFIG}"
# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool false
defaults write com.googlecode.iterm2.plist OpenNewWindowAtStartup -bool false
defaults write com.googlecode.iterm2.plist SUEnableAutomaticChecks -bool false

# Don’t display the annoying prompt when quitting iTerm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

dotfiles_echo "-> Downloading iterm themes..."
wget -P "${ITERM_CONFIG}/themes/" https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/OneHalfDark.itermcolors -q -c --show-progress
wget -P "${ITERM_CONFIG}/themes/" https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/OneHalfLight.itermcolors -q -c --show-progress
