#!/usr/bin/env bash

if [ -e "${HOME}/.asdf" ]; then
    dotfiles_echo ".asdf exists."
    if [ -L "${HOME}/.asdf" ]; then
        dotfiles_echo "Symbolic link for detected. Removing..."
        rm -v "${HOME}/.asdf"
    else
        dotfiles_echo "Backing up..."
        dotfiles_backup "${HOME}/.asdf"
    fi
fi


brew install asdf

git clone https://github.com/asdf-vm/asdf.git ~/.asdf
cd ~/.asdf
git checkout "$(git describe --abbrev=0 --tags)"

cd $DOTFILES

dotfiles_echo "-> Adding python..."
asdf plugin add python
dotfiles_echo "-> Adding ruby..."
asdf plugin add ruby
dotfiles_echo "-> Adding NodeJs..."
asdf plugin add nodejs

bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

asdf install

# sudo ln -s /usr/local/opt/asdf/libexec/ /usr/local/libexec
