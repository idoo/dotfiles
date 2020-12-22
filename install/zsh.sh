#!/usr/bin/env bash

# if [ -e "${HOME}/.oh-my-zsh" ]; then
#     dotfiles_echo ".oh-my-zsh exists."
#     if [ -L "${HOME}/.oh-my-zsh" ]; then
#         dotfiles_echo "Symbolic link detected. Removing..."
#         rm -v "${HOME}/.oh-my-zsh"
#     else
#         dotfiles_echo "Backing up..."
#         dotfiles_backup "${HOME}/.oh-my-zsh"
#     fi
# fi

brew install zsh

sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# brew install zsh-autosuggestions
mkdir ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/
ln -s /usr/local/share/zsh-autosuggestions/ ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/

git clone https://github.com/djui/alias-tips.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/alias-tips
git clone https://github.com/TamCore/autoupdate-oh-my-zsh-plugins.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/autoupdate
git clone https://github.com/peterhurford/git-aliases.zsh.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/git-aliases
git clone https://github.com/unixorn/git-extra-commands.git  ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/git-extra-commands
git clone https://github.com/unixorn/tumult.plugin.zsh.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/tumult
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/you-should-use
