#!/bin/bash

# source ~/.dotfiles/Setup/sudo-no-root

# Clean up the default dock programs
dockutil --remove 'App Store' --allhomes
dockutil --remove 'Calendar' --allhomes
dockutil --remove 'Contacts' --allhomes
dockutil --remove 'Downloads' --allhomes
dockutil --remove 'FaceTime' --allhomes
dockutil --remove 'iBooks' --allhomes
dockutil --remove 'Keynote' --allhomes
dockutil --remove 'Mail' --allhomes
dockutil --remove 'Maps' --allhomes
dockutil --remove 'Messages' --allhomes
dockutil --remove 'Music' --allhomes
dockutil --remove 'News' --allhomes
dockutil --remove 'Numbers' --allhomes
dockutil --remove 'Pages' --allhomes
dockutil --remove 'Podcasts' --allhomes
dockutil --remove 'Reminders' --allhomes
dockutil --remove 'Siri' --allhomes
dockutil --remove 'System Preferences' --allhomes
dockutil --remove 'TV' --allhomes
# dockutil --remove 'Launchpad' --allhomes
# dockutil --remove 'Notes' --allhomes
# dockutil --remove 'Photos' --allhomes
# dockutil --remove 'Safari' --allhomes

# dockutil --add /Applications/Google\ Chrome.app --position 1
dockutil --remove 'Spark' --allhomes
dockutil --add /Applications/Spark.app --position 3
dockutil --remove 'Slack' --allhomes
dockutil --add /Applications/Slack.app --position 4
dockutil --remove 'iTerm' --allhomes
dockutil --add /Applications/iTerm.app --position 5
dockutil --remove 'Telegram' --allhomes
dockutil --add /Applications/Telegram.app --position 6
dockutil --remove 'Spotify' --allhomes
dockutil --add /Applications/Spotify.app --position 7
dockutil --remove 'SnippetsLab' --allhomes
dockutil --add /Applications/SnippetsLab.app --position 8
dockutil --remove 'Visual Studio Code' --allhomes
dockutil --add /Applications/Visual\ Studio\ Code.app --position 9
