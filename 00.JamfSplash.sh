#!/bin/sh

# Enrollment splash screen to help prevent users from messing with the Mac while initial enrolling.

# Change variables here.
screenName="COMPANY NAME" # Organization name shown on the splash screen.
screenGraphic="/System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/FinderIcon.icns" # Graphic shown on the splash screen. It's best to use something built in to macOS.
sayName="COMPANY NAME" # Organization name spoken outloud. It's best to be informal here. Also, you may have to try different spellings to get the speech engine working correctly.
sayVoice="Samantha" # In Terminal use "say -v ?" to see the full list of options.

# Set the system audio volume. Change digit at end (1-10).
osascript -e "set Volume 1"

# Wait for the Dock to be open. This is necessary for DEP enrollment to complete Setup Assistant.
while ! pgrep "Dock" > /dev/null; do
    sleep 2
done

# Resolve the current username and real name.
currentUser=`stat -f '%Su' /dev/console`
firstName=`dscl . -read /Users/$currentUser RealName | tail -1 | awk '{ print $1}'`

# JamfSplash announcement.
sudo -u $currentUser /Library/Application\ Support/JAMF/bin/jamfHelper.app/Contents/MacOS/jamfHelper -windowType fs -heading "$screenName Mac Setup" -icon "$screenGraphic" -description "Hello $firstName! There are a few steps required to complete the setup of your new $screenName Mac. In a few minutes this Mac will automatically restart and be ready for you to use." &
echo "`date` - Showing JamfSplash screen for $currentUser."
sleep 1
say -v $sayVoice "Hello $firstName! There are a few steps required to complete the setup of your new $sayName Mac. In a few minutes this Mac will automatically restart and be ready for you to use." &

# Open the Jamf log in case you quit the jamfHelper screen (via Command-Q).
sudo -u $currentUser open /var/log/jamf.log &
