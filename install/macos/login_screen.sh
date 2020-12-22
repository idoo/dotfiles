#!/bin/sh

echo "Setting defaults login screen...";

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Disable audio feedback when volume is changed
defaults write com.apple.sound.beep.feedback -bool false

# Show language menu in the top right corner of the boot screen
sudo defaults write /Library/Preferences/com.apple.loginwindow showInputMenu -bool true
