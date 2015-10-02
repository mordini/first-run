#!/bin/bash

. function-pause.sh
. function-get-users.sh

IFS=' ' read -a users <<< getusers

echo ${users[1]}

echo 'Choose a user to modify'
