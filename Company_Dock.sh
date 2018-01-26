#!/bin/bash

dockutil --remove all --allhomes --no-restart 
/bin/sleep 5
#dockutil --remove 'Mail' --allhomes --no-restart
#dockutil --remove 'Launchpad' --allhomes --no-restart
#dockutil --remove 'Maps' --allhomes --no-restart
#dockutil --remove 'Reminders' --allhomes --no-restart
#dockutil --remove 'iBooks' --allhomes --no-restart
#dockutil --remove 'FaceTime' --allhomes --no-restart
#dockutil --remove 'App Store' --allhomes --no-restart
#dockutil --remove 'iTunes' --allhomes --no-restart
#dockutil --remove 'Messages' --allhomes --no-restart
#dockutil --remove 'Contacts' --allhomes --no-restart
dockutil --remove all --allhomes --no-restart
dockutil --add /Applications/Firefox.app --allhomes --no-restart
dockutil --add /Applications/Google\ Chrome.app --allhomes --no-restart
dockutil --add /Applications/Utilities/Terminal.app --allhomes --no-restart
dockutil --add /Applications/Safari.app --allhomes --no-restart
dockutil --add /Applications/Dashboard.app --allhomes --no-restart
dockutil --add /Applications/zoom.us.app --allhomes --no-restart
dockutil --add /Applications/Dialpad.app --allhomes --no-restart
dockutil --add /Applications/Viscosity.app --allhomes --no-restart
dockutil --add /Applications/Slack.app --allhomes --no-restart
dockutil --add /Applications/Sophos\ Anti-Virus.app --allhomes --no-restart
dockutil --add /Applications/Self\ Service.app --allhomes --no-restart
dockutil --add /Applications/Google\ Drive.app --allhomes --no-restart
dockutil --add /Applications/LibreOffice.app --allhomes --no-restart

killall cfprefsd
killall Dock