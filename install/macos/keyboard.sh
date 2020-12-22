
#!/bin/sh

echo "Setting defaults for keyboard...";

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15
defaults write com.apple.Accessibility KeyRepeatDelay -string "0.5"
defaults write com.apple.Accessibility KeyRepeatEnabled -int 1
defaults write com.apple.Accessibility KeyRepeatInterval -string "0.083333333"

# Disable automatic capitalization as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable automatic period substitution as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# https://stackoverflow.com/questions/37581090/does-anyone-know-where-osx-stores-the-settings-in-system-preferences-keyboard
# https://developer.apple.com/library/archive/technotes/tn2450/_index.html
# Map Caps Lock to ESC
hidutil property --set '{
  "UserKeyMapping":[{
    "HIDKeyboardModifierMappingSrc":0x700000039,
    "HIDKeyboardModifierMappingDst":0x700000029
  }]
}'
