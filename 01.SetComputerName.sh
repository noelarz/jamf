#!/bin/sh

# This script will attempt to name the computer based on the current user.

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

elif [ $currentUser == "ninja_admin" ] # Change this one to the Jamf management account.
then
    echo "Current user is ninja_admin, will not recon username."

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

else # We've found our account, now we can update the computername.
	echo "Current username appears to be $currentUser... updating computer name."
	
	jamf setComputerName -name "$currentUser"

fi