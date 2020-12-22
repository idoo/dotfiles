#!/bin/bash

config_dirs=(
    "pry"
    "wireshark"
)

config_files=(
    "starship.toml"
)


for item in "${config_dirs[@]}"; do
    if [ -d "${XDG_CONFIG_HOME}/${item}" ]; then
        dotfiles_echo "Directory ${item} exists."
        if [ -L "${XDG_CONFIG_HOME}/${item}" ]; then
            dotfiles_echo "Symbolic link detected. Removing..."
            rm -v "${XDG_CONFIG_HOME}/${item}"
        else
            dotfiles_echo "Backing up..."
            dotfiles_backup "${XDG_CONFIG_HOME}/${item}"
        fi
    fi
    dotfiles_echo "-> Linking ${DOTFILES}/dotfiles/config/${item} to ${XDG_CONFIG_HOME}/${item}..."
    ln -nfs "${DOTFILES}/dotfiles/config/${item}" "${XDG_CONFIG_HOME}/${item}"
done



dotfiles_echo "-> Linking config files..."
for item in "${config_files[@]}"; do
    if [ -e "${XDG_CONFIG_HOME}/${item}" ]; then
        dotfiles_echo "${item} exists."
        if [ -L "${XDG_CONFIG_HOME}/${item}" ]; then
            dotfiles_echo "Symbolic link detected. Removing..."
            rm -v "${XDG_CONFIG_HOME}/${item}"
        else
            dotfiles_echo "Backing up..."
            dotfiles_backup "${XDG_CONFIG_HOME}/${item}"
        fi
    fi
    dotfiles_echo "-> Linking ${DOTFILES}/dotfiles/config/${item} to ${XDG_CONFIG_HOME}/${item}..."
    ln -nfs "${DOTFILES}/dotfiles/config/${item}" "${XDG_CONFIG_HOME}/$item"
done
