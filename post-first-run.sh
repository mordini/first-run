#!/bin/bash

#put scripts, installs, etc you want in here, new user!

#i want emacs
brew install emacs

#these items must stay together
echo 'WARNING! this will erase your current .emacs.d. if you don''t know what this means, I wouldn''t worry about it (go ahead)'
echo ''
echo 'install custom .emacs.d? y/n'

read instCustEmacs

if [ $instCustEmacs == 'y' ]; then
    rm -rf ~/.emacs.d
    git clone https://github.com/mordini/.emacs.d.git
    #mkdir ~/.emacs.d
    #rm -rf ~/first-run-temp
    #git clone https://github.com/mordini/.emacs.d.git ~/first-run-temp
    #mv ~/first-run-temp/* ~/.emacs.d
    #rm -rf first-run-temp
else
    echo 'NYAH!'
fi
