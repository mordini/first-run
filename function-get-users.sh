#!/bin/bash

function getUsers() {

    #awk -F':' '$2 ~ "\$" {print $1}' /etc/shadow
    awk -F':' '$2 ~ "\$" {print $1}' /etc/shadow > /dev/null
}

getUsers
