#!/bin/bash

echo 'do you want to continue? yes to continue, anything else to exit'

read INPUT

if [ $INPUT == 'yes' ]; then

    echo 'affirmative'

else
    echo 'exiting'
fi

 
