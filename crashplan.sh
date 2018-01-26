#!/bin/sh

defaults write NSGlobalDomain AppleShowAllFiles -bool true && killall Finder
#open /System/Library/CoreServices/Finder.app
#open Code42CrashPlan5.3.1.dmg
installer -pkg /Volumes/Code42CrashPlan/Install\ Code42\ CrashPlan.pkg -target /

#diskutil unmountDisk force /Volumes/Code42CrashPlan/

#rm /Install\ Code42\ CrashPlan.pkg
#rm -r /Uninstall.app
#rm -r /.Custom
#rm installer_background.gif
#rm -r /.fseventsd

defaults write NSGlobalDomain AppleShowAllFiles -bool false && killall Finder

#defaults write com.apple.finder AppleShowAllFiles NO
#open /System/Library/CoreServices/Finder.app