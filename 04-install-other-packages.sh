#!/bin/bash

. function-pause.sh

pkgs='checkinstall console-data tmux irssi'

# put packages into an array
IFS=' ' read  -a pkgList <<< $pkgs

echo 'installing other packages:'
for i in ${pkgList[@]}
do
    count=$(($count+1))
    echo '  ' $count'.' $i

done

pause

(apt-get install $pkgs)

echo 'finished installing other packages'

./05-add-users.sh
