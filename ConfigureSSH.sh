#!/bin/sh

# Turn on remote login
systemsetup -setremotelogin on

# Create the com.apple.access_ssh group
dseditgroup -o create -q com.apple.access_ssh

# Add the admin group to com.apple.access_ssh
dseditgroup -o edit -a admin -t group com.apple.access_ssh