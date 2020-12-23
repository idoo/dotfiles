#!/bin/sh

echo "Setting defaults touchbar...";

# Touchbar (create default behaviour)
defaults write com.apple.controlstrip FullCustomized -array com.apple.system.group.brightness com.apple.system.mission-control com.apple.system.launchpad com.apple.system.group.media com.apple.system.group.volume com.apple.system.do-not-disturb com.apple.system.sleep com.apple.system.input-menu
# Mini Touchbar is MiniCustomized (not used)

# Disable TouchBar by default and show F-keys on fn press
defaults write com.apple.touchbar.agent PresentationModeGlobal -string "fullControlStrip"
defaults write com.apple.touchbar.agent PresentationModeFnModes -dict-add fullControlStrip functionKeys

# Control Strip
# com.apple.system.brightness
# com.apple.system.dashboard
# com.apple.system.dictation
# com.apple.system.do-not-disturb
# com.apple.system.input-menu
# com.apple.system.launchpad
# com.apple.system.media-play-pause
# com.apple.system.mission-control
# com.apple.system.mute
# com.apple.system.notification-center
# com.apple.system.screen-lock
# com.apple.system.screen-saver
# com.apple.system.screencapture
# com.apple.system.search
# com.apple.system.show-desktop
# com.apple.system.siri
# com.apple.system.sleep
# com.apple.system.volume
