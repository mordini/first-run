#!/bin/bash

. function-pause.sh
. function-get-users.sh

IFS=' ' read -a users <<< getusers

echo ${users[4]}

echo 'Choose a user to modify'
