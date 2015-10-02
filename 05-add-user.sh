#!/bin/bash

. function-pause.sh

function promptUserAdd {

    echo 'Add Users? y/n (or anything else to exit)'
    read answer

    if [ $answer == 'y'  ]; then
	addUsers
    fi
    
}

function giveSudo {
    adduser $1 sudo
}

function addUsers {

	echo 'enter a username'
	read newUser
	adduser $newUser

	echo 'give user sudos? y/n'
	read giveSudo

	if [ $giveSudo == 'y' ]; then
	    giveSudo $newUser
	else
	    echo 'forget you, then'
	fi

    echo 'would you like to add another user? y/n'

    read addAnotherUser

    if [ $addAnotherUser == 'y'  ]; then
	addUsers
    else
	echo 'winners don''t do drugs!'
    fi
}

promptUserAdd
