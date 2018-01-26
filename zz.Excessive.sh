#!/bin/sh

/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -all local,system,user

sudo xattr -r -d com.apple.quarantine /Applications/Slack.app
sudo xattr -r -d com.apple.quarantine /Applications/Dialpad.app
sudo xattr -r -d com.apple.quarantine /Applications/Viscosity.app
sudo xattr -r -d com.apple.quarantine /Applications/Firefox.app
sudo xattr -r -d com.apple.quarantine /Applications/zoom.us.app



