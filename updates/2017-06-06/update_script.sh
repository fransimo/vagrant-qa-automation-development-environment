#!/bin/bash

SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`

# This script tires to remove the apt proxy 
# so you can make an apt-get install without problems

#check if file exists
if [ -f /etc/apt/apt.conf ]; then
    #edit file to remove the proxy
    sudo sed -i.old 's/.*Proxy.*/#&/' /etc/apt/apt.conf
    ret=0
else
    echo "apt.conf not found"
    ret=1
fi

exit $ret


