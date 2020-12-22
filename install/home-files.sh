#!/bin/bash

home_files=(
    "aria2"
    "asdfrc"
    "aws"
    "boto"
    "Brewfile"
    "curlrc"
    "default-gems"
    "default-npm-packages"
    "docker"
    "dockercfg"
    "editorconfig"
    "eslintrc"
    "exercism.json"
    "gemrc"
    "gitconfig"
    "gitignore_global"
    "gitignore"
    "gitmessage"
    "gitmessage"
    "ripgreprc"
    "rubocop.yml"
    "ssh"
    "tmux.conf"
    "tmux.conf"
    "tool-versions"
    "transmission"
    "yarnrc"
    "zshrc"
)


for item in "${home_files[@]}"; do
    if [ -e "${HOME}/.${item}" ]; then
        dotfiles_echo ".${item} exists."
        if [ -L "${HOME}/.${item}" ]; then
            dotfiles_echo "Symbolic link detected. Removing..."
            rm -v "${HOME}/.${item}"
        else
            dotfiles_echo "Backing up..."
            dotfiles_backup "${HOME}/.${item}"
        fi
    fi
    dotfiles_echo "-> Linking ${DOTFILES}/${item} to ${HOME}/.${item}..."
    ln -nfs "${DOTFILES}/dotfiles/${item}" "${HOME}/.${item}"
done

dotfiles_echo "-> Change mode for ssh..."
chmod 400 ~/.ssh/id_rsa
