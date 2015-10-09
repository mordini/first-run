#!/bin/bash

# who uses capslock?
# use it for CTRL key! save your pinky!

echo ''
echo 'who even USES capslock?'
echo 'disable capslock and use it as an alternate to ctrl?'
echo 'recommended! try it, you won''t go back'
echo 'y/n'

read swapCapsCtrl

if [ $swapCapsCtrl == 'y'  ]; then

    sed -i 's/XKBOPTIONS=""/XKBOPTIONS="ctrl:nocaps"/g' /etc/default/keyboard
    echo 'reconfiguring...'
    dpkg-reconfigure -phigh console-setup

else
    echo 'you''re no fun...'
fi

echo 'done! give it a shot'
