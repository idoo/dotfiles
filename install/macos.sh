# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

source "${DOTFILES}/install/macos/activity_monitor.sh"
source "${DOTFILES}/install/macos/app_store.sh"
source "${DOTFILES}/install/macos/dock.sh"
source "${DOTFILES}/install/macos/energy_saving.sh"
source "${DOTFILES}/install/macos/finder.sh"
source "${DOTFILES}/install/macos/firewall.sh"
source "${DOTFILES}/install/macos/keyboard.sh"
source "${DOTFILES}/install/macos/login_screen.sh"
source "${DOTFILES}/install/macos/mail.sh"
source "${DOTFILES}/install/macos/messages.sh"
source "${DOTFILES}/install/macos/mouse_and_trackpad.sh"
source "${DOTFILES}/install/macos/photos.sh"
source "${DOTFILES}/install/macos/privacy.sh"
source "${DOTFILES}/install/macos/printers.sh"
source "${DOTFILES}/install/macos/safari.sh"
source "${DOTFILES}/install/macos/screen.sh"
source "${DOTFILES}/install/macos/screenshots.sh"
source "${DOTFILES}/install/macos/terminal.sh"
source "${DOTFILES}/install/macos/time_machine.sh"
source "${DOTFILES}/install/macos/touchbar.sh"

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Disable the crash reporter
defaults write com.apple.CrashReporter DialogType -string "none"


source "${DOTFILES}/install/macos/restart_services.sh"
