#!/bin/bash

. function-pause.sh

pkgs='build-essential curl git m4 ruby texinfo libbz2-dev libcurl4-openssl-dev libexpat-dev libncurses-dev zlib1g-dev'

# put packages into an array
IFS=' ' read  -a pkgList <<< $pkgs

echo 'installing linuxbrew essentials:'
for i in ${pkgList[@]}
do
    count=$(($count+1))
    echo '  ' $count'.' $i

done

pause

(apt-get install $pkgs)

echo 'finished installing linuxbrew essentials'

./04-install-other-packages.sh
