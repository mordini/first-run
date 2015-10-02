#!/bin/bash

. function-pause.sh

echo "installing sudo"

pause

(apt-get install sudo)

echo "sudo Installed"

./03-install-linuxbrew-essentials.sh
