#!/usr/bin/env bash

if ! grep -q pam_tid.so "/etc/pam.d/sudo"; then
  sudo gsed -i '1a\auth       sufficient     pam_tid.so\' /etc/pam.d/sudo
fi

# Prefs -> Advanced -> Allow sessions to survive logging out and back in
