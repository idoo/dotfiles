#!/bin/sh

echo "Setting defaults for Photos.app...";

# Prevent Photos from opening automatically when devices are plugged in
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true
