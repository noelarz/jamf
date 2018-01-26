#!/bin/bash

loggedInUser=`python -c 'from SystemConfiguration import SCDynamicStoreCopyConsoleUser; import sys; username = (SCDynamicStoreCopyConsoleUser(None, None, None) or [None])[0]; username = [username,""][username in [u"loginwindow", None, u""]]; sys.stdout.write(username + "\n");'`

echo $loggedInUser

#sudo -u $loggedInUser echo|ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" 2> /Users/dale.georg/test.log
sudo -u $loggedInUser brew update

echo $loggedInUser
sudo -u $loggedInUser brew doctor

sudo easy_install pip
echo $loggedInUser
sudo -u $loggedInUser brew install s3cmd
echo $loggedInUser
sudo -u $loggedInUser brew install git
git config --global credential.helper osxkeychain
echo $loggedInUser
sudo -u $loggedInUser brew install maven
echo $loggedInUser
sudo -u $loggedInUser brew install wget
echo $loggedInUser
sudo -u $loggedInUser brew install rpm