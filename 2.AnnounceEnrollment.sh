#!/bin/sh

osascript -e "set Volume 1"

say "Starting Enrollment Tasks!"

if [ -z $3 ]
then
	currentUser=`stat -f '%Su' /dev/console`
else
	currentUser=$3
fi

sudo -u $currentUser open /var/log/jamf.log 

/Library/Application\ Support/JAMF/bin/jamfHelper.app/Contents/MacOS/jamfHelper -title "COMPANY NAME Setup" -windowType fs -description "This computer must complete a few more tasks for setup. It will automatically restart when ready for use." -heading "COMPANY NAME Setup For $currentUser" &
