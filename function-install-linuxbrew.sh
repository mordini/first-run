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
function installLinuxBrew {

    userDir=$(eval echo ~$1)
    echo $userDir
    
    su - $1 -c 'ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"'

    sed -i '1i\\' $userDir/.bashrc
    sed -i '1i export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"' $userDir/.bashrc
    sed -i '1i export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"' $userDir/.bashrc
    sed -i '1i export PATH="$HOME/.linuxbrew/bin:$PATH"' $userDir/.bashrc

    su - $1 -c 'brew doctor'
}
