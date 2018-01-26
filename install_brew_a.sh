#!/bin/sh
#Getting Username
user=`ls -la /dev/console | cut -d " " -f 4`

#Downlading and installing Homebrew
#cd /usr/local
yes | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" </dev/null
chown -R $user $(ls | grep -v bin)
chown $user /usr/local/bin/brew
chgrp admin /usr/local/bin/brew

#Modifying permissions and creating directories
chmod g+rwx /usr/local
chgrp admin /usr/local
mkdir /Library/Caches/Homebrew
chmod g+rwx /Library/Caches/Homebrew
chown -R $user /Library/Caches
chmod g+rwx /usr/local/bin
chgrp admin /usr/local/bin

#Creating .bash_profile with new path but checking there isn't one already
if [ ! -f /Users/$user/.bash_profile ]; then
    sudo -u $user echo "PATH=/usr/local/bin:$PATH" >> /Users/$user/.bash_profile
fi