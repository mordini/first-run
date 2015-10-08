#!/bin/bash

function getUsers() {

    #working on this one!
    
    #awk -F':' '$2 ~ "\$" {print $1}' /etc/shadow
    declare -a userArray=($(awk -F':' '$2 ~ "\$" {print $1}' /etc/shadow))

    #testing sending vars to another script
    #sourced file
    testVar='this is a test'
 
    #echo ${userArray[0]}
    #echo ${userArray[1]}
    #echo ${userArray[2]}
}

#getUsers
