#!/bin/bash

#. function-pause.sh
#. function-get-users.sh

# add this functionality later
# to get users, choose users, install for users
#IFS=' ' read -a users <<< getusers
#getUsers
#echo $testVar
#echo ${users[4]}
#echo 'Choose users to have Linuxbrew:'

# for now, install on a per-user add basis
# IF you would like to run this separately from add-user,
# at command prompt:
# . function-install-linuxbrew.sh; installLinuxbrew username

function installLinuxbrew {

    userDir=$(eval echo ~$1)

    # add script to customise user experience
    cp post-first-run.sh $userDir
    chown $1:$1 $userDir/post-first-run.sh
    
    su - $1 -c 'ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"'

    sed -i '1i\\' $userDir/.bashrc
    sed -i '1i export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"' $userDir/.bashrc
    sed -i '1i export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"' $userDir/.bashrc
    sed -i '1i export PATH="$HOME/.linuxbrew/bin:$PATH"' $userDir/.bashrc

    su - $1 -c 'brew doctor'
}
