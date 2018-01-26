#!/bin/sh

/Users/Shared/SophosInstall/Sophos\ Installer.app/Contents/MacOS/Sophos\ Installer --install

rm -rf /Users/Shared/Sophos*
##move plist
#mv /Library/Application\ Support/Sophos/mcs/config/configuration.plist /Library/Application\ Support/Sophos/mcs/config/configuration.plist.image

## Install Sophos
#/Library/Application\ Support/JAMF/Sophos/Sophos\ Installer.app/Contents/MacOS/Sophos\ Installer --install

## move plist BACK
#sudo mv /Library/Application\ Support/Sophos/mcs/config/configuration.plist.image /Library/Application\ Support/Sophos/mcs/config/configuration.plist
#launchctl stop com.sophos.mcs

## Remove Installer
#rm -rf /Library/Application\ Support/JAMF/Sophos/


#hdiutil mount /Library/Application\Support/JAMF/Downloads/Sophos1.dmg
#defaults write NSGlobalDomain AppleShowAllExtensions -bool true && killall Finder
#chmod a+x /Volumes/Sophos\ Installer\ Components/Users/SophosInstall/Sophos\ Installer.app/Contents/MacOS/Sophos\ Installer && chmod a+x /Volumes/Sophos\ Installer\ Components/Users/SophosInstall/Sophos\ Installer.app/Contents/MacOS/tools/com.sophos.bootstrap.helper
#/Volumes/Sophos\ Installer\ Components/Users/SophosInstall/Sophos\ Installer.app/Contents/MacOS/Sophos\ Installer --install

#chmod a+x /Users/narzadon/Downloads/SophosInstall/Sophos\ Installer.app/Contents/MacOS/Sophos\ Installer
#chmod a+x /Users/narzadon/Downloads/SophosInstall/Sophos\ Installer.app/Contents/MacOS/tools/com.sophos.bootstrap.helper
#/Users/narzadon/Downloads/SophosInstall/Sophos\ Installer.app/Contents/MacOS/Sophos\ Installer --install

#defaults write NSGlobalDomain AppleShowAllExtensions -bool false && killall Finder

#rm -rf /Users/name

#rm -rf Downloads/Sophos*
#rm -rf Downloads/sophos*

#diskutil unmountDisk force /Volumes/SophosInstall/
