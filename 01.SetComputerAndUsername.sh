#!/bin/sh

# This script will attempt to populate the username in the JSS.

# If the jamf binary runs this script at the right time, it will set the $3 variable 
# to the username. However, if $3 is blank, this logic will try to figure out the
# current logged in username.
if [ -z $3 ]
then
	currentUser=`stat -f '%Su' /dev/console`
else
	currentUser=$3
fi

# Ignore the current user if it’s one of the following accounts.
if [ $currentUser == "casper" ] # Change this one to the Jamf management account.
then
    echo "Current user is casper, will not recon username."

elif [ $currentUser == "admin" ] # Change this one to the Jamf management account.
then
    echo "Current user is local admin, will not recon username."

elif [ $currentUser == "root" ]
then
	echo "Current user is root, will not recon username."

elif [ $currentUser == "loginwindow" ]
then
	echo "Computer is at the Login Screen, will not recon username."

elif [ $currentUser == "_mbsetupuser" ]
then
	echo "Computer is at the Setup Assistant, will not recon username."

elif [ $currentUser == "adobeinstall" ]
then
	echo "Computer is running Casper Imaging tasks, will not recon username."

else # We've found our account, now we can update the computername and inventory.
	echo "Current username appears to be $currentUser... updating computer name and inventory."

	jamf setComputerName -name "$currentUser"
	
	# The recon is last so all changes are reported back to the Jamf server.
	jamf recon -endUsername $currentUser
fi