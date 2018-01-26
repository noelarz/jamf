#!/bin/sh

# This script must be run as root or via Jamf.
# Use "/usr/sbin/systemsetup -listtimezones" to see a list of available list time zones.
# TimeZone variable should be filled with the TimeZone information (ie: America/Chicago, America/New_York )
# TimeServer variable should be filled with the TimeServer information (ie: time.apple.com )
TimeZone="America/Chicago"
TimeServer="time.apple.com"

# Disable network time
systemsetup -setusingnetworktime off

# Set an initial time zone
systemsetup -settimezone "$TimeZone"

# Set specific time server
systemsetup -setnetworktimeserver "$TimeServer"

# Unload locationd
launchctl unload /System/Library/LaunchDaemons/com.apple.locationd.plist

# Write enabled value to locationd plist
defaults write /var/db/locationd/Library/Preferences/ByHost/com.apple.locationd LocationServicesEnabled -int 1

# Fix Permissions for the locationd folder
chown -R _locationd:_locationd /var/db/locationd

# Reload locationd
launchctl load /System/Library/LaunchDaemons/com.apple.locationd.plist

# set time zone automatically using current location
defaults write /Library/Preferences/com.apple.timezone.auto Active -bool true

# Re-enable network time
systemsetup -setusingnetworktime on

# Detect the timezone
systemsetup -gettimezone

# Get the time from time server
systemsetup -getnetworktimeserver