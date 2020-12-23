#!/bin/bash

local_dirs=(
    "share"
)

if [ -z "$XDG_LOCAL_HOME" ]; then
    if [ ! -d "${HOME}/.local" ]; then
        mkdir "${HOME}/.local"
    fi
    export XDG_LOCAL_HOME="${HOME}/.local"
fi

for item in "${local_dirs[@]}"; do
    if [ -d "${XDG_LOCAL_HOME}/${item}" ]; then
        dotfiles_echo "Directory ${item} exists."
        if [ -L "${XDG_LOCAL_HOME}/${item}" ]; then
            dotfiles_echo "Symbolic link detected. Removing..."
            rm -v "${XDG_LOCAL_HOME}/${item}"
        else
            dotfiles_echo "Backing up..."
            dotfiles_backup "${XDG_LOCAL_HOME}/${item}"
        fi
    fi
    dotfiles_echo "-> Linking ${DOTFILES}/dotfiles/local/${item} to ${XDG_LOCAL_HOME}/${item}..."
    ln -nfs "${DOTFILES}/dotfiles/local/${item}" "${XDG_LOCAL_HOME}/${item}"
done
