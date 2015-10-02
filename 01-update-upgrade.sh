#!/bin/bash

. function-pause.sh

echo "updating packages, upgrading"

pause

(apt-get update; apt-get upgrade)

echo "finished updating packages, upgrading"

./02-install-sudo.sh
