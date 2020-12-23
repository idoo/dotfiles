#!/bin/sh

echo "Setting defaults for firewall...";

sudo defaults write "/Library/Preferences/com.apple.alf" globalstate -int 1
