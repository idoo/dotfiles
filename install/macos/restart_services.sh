#!/bin/bash

echo "Restarting Dock"
killall Dock

echo "Restarting Finder"
killall Finder

echo "Restarting System UI Server"
killall SystemUIServer
