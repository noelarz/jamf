#!/bin/sh

echo "Enable Remote Management for specified users only."
/System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -configure -allowAccessFor -specifiedUsers

# Change local admin accounts here!
echo "Enable Remote Management for local administrators; admin,casper"
/System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -configure -access -on -privs -all -users admin,casper

# Set for "no" to hide the Remote Management menu item.
echo "Disable Remote Management menu item."
/System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -configure -clientopts -setmenuextra -menuextra no

# Allows for directory-based accounts to use Remote Management. This is dependent on user accounts being members of a group named "ard_admin".
echo "Enable Remote Management directory authentication."
/System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -configure -clientopts -setdirlogins -dirlogins yes

echo "Activate and restart Remote Management agent."
/System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -activate -restart -agent -menu