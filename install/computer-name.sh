#!/bin/bash

read COMPUTER_NAME

if [[ ! -z "${COMPUTER_NAME}" ]]; then
    sudo systemsetup -setcomputername "${COMPUTER_NAME}" &> /dev/null
    sudo systemsetup -setlocalsubnetname "${COMPUTER_NAME}" &> /dev/null
    sudo scutil --set ComputerName "${COMPUTER_NAME}"
    sudo scutil --set HostName "${COMPUTER_NAME}"
    sudo scutil --set LocalHostName "${COMPUTER_NAME}"
    sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "${COMPUTER_NAME}"
fi
