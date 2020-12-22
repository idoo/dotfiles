#!/bin/sh

echo "Setting defaults for Terminal...";

# Only use UTF-8 in Terminal.app
defaults write com.apple.terminal StringEncodings -array 4

# Use the Pro theme by default in Terminal.app
defaults write com.apple.Terminal "Default Window Settings" -string 'Pro'
defaults write com.apple.Terminal "Startup Window Settings" -string 'Pro'

# Enable Secure Keyboard Entry in Terminal.app
# See: https://security.stackexchange.com/a/47786/8918
defaults write com.apple.terminal SecureKeyboardEntry -bool true

# Disable the annoying line marks
defaults write com.apple.Terminal ShowLineMarks -int 0
