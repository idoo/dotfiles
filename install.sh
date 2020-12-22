#!/usr/bin/env bash

dotfiles_echo() {
    local fmt="$1"; shift
    printf "\\n[DOTFILES] ${fmt}\\n" "$@"
}

dotfiles_backup() {
    if ! command -v gcp >/dev/null || ! command -v gdate >/dev/null; then
        dotfiles_echo "GNU cp and date commands are required. Please install via Homebrew coreutils: brew install coreutils"
        exit 1
        elif [ -d "$1" ]; then
        mv -v "$1" "${1}_bak_$(gdate +"%Y%m%d%3N")"
    else
        gcp -f --backup=numbered "$1" "$1"
    fi
}

# set -e # Terminate script if anything exits with a non-zero value

sudo -v
# Keep-alive: update existing sudo time stamp if set, otherwise do nothing.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

if [ -z "$DOTFILES" ]; then
    export DOTFILES="${HOME}/Library/Mobile Documents/com~apple~CloudDocs/config"
fi

if [ -z "$XDG_CONFIG_HOME" ]; then
    if [ ! -d "${HOME}/.config" ]; then
        mkdir "${HOME}/.config"
    fi
    export XDG_CONFIG_HOME="${HOME}/.config"
fi


# Ensure Yarn is available in PATH for when Neovim runs plugin installation.
# https://github.com/yarnpkg/website/blob/96485d6901f1545a72f413e8df6a6851dece4d75/install.sh#L81
dotfiles_echo "Adding Yarn to PATH..."
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"


dotfiles_echo "Checking PATH..."
echo "$PATH"


dotfiles_echo "What would you like to name your computer?"
source "${DOTFILES}/install/computer-name.sh"


dotfiles_echo "-> Install basic software..."
source "${DOTFILES}/install/base.sh"


dotfiles_echo "-> Install zsh..."
source "${DOTFILES}/install/zsh.sh"


dotfiles_echo "-> Linking basic dotfiles..."
source "${DOTFILES}/install/home-files.sh"


dotfiles_echo "-> Linking config directories..."
source "${DOTFILES}/install/home-config.sh"


dotfiles_echo "-> Installing brew software..."
brew bundle install --file=${DOTFILES}/dotfiles/Brewfile


dotfiles_echo "-> Installing asdf..."
source "${DOTFILES}/install/asdf.sh"


dotfiles_echo "-> Add TouchId support for shell..."
source "${DOTFILES}/install/touch_id.sh"


dotfiles_echo "-> Openning apps..."
source "${DOTFILES}/install/open.sh"


dotfiles_echo "-> Configuring iterm..."
source "${DOTFILES}/install/iterm.sh"


dotfiles_echo "-> Installing adblock..."
source "${DOTFILES}/install/adblock.sh"


dotfiles_echo "-> Configuring alfred..."
source "${DOTFILES}/install/alfred.sh"


dotfiles_echo "-> Configuring MacOs..."
source "${DOTFILES}/install/macos.sh"


dotfiles_echo "-> Configuring Dock..."
source "${DOTFILES}/install/dock.sh"


dotfiles_echo "-> Configuring Duti..."
source "${DOTFILES}/install/duti.sh"


dotfiles_echo "-> Configuring bitbar..."
source "${DOTFILES}/install/bitbar.sh"


dotfiles_echo "-> Configuring Fantastical..."
source "${DOTFILES}/install/fantastical.sh"


dotfiles_echo "-> Configuring Quitter..."
source "${DOTFILES}/install/quitter.sh"


dotfiles_echo "-> Configuring Spotify..."
source "${DOTFILES}/install/spotify.sh"


dotfiles_echo "-> Configuring SnippetsLab..."
source "${DOTFILES}/install/snippetslab.sh"


dotfiles_echo "-> Configuring Slack..."
source "${DOTFILES}/install/slack.sh"


dotfiles_echo "-> Configuring Terminal..."
source "${DOTFILES}/install/terminal.sh"


dotfiles_echo "-> Configuring Telegram..."
source "${DOTFILES}/install/telegram.sh"


dotfiles_echo "-> Configuring Transmission..."
source "${DOTFILES}/install/transmission.sh"


dotfiles_echo "-> Configuring Screensaver..."
source "${DOTFILES}/install/fliqlo.sh"


# dotfiles_echo "-> Configuring TripMode..."
# source "${DOTFILES}/install/tripmode.sh"


dotfiles_echo "Installation complete!"
