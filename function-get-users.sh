#!/bin/bash

function getUsers() {

    #awk -F':' '$2 ~ "\$" {print $1}' /etc/shadow
    awk -F':' '$2 ~ "\$" {return $1}' /etc/shadow
}

getUsers
